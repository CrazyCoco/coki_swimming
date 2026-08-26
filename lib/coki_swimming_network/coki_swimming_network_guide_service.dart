part of '../main.dart';

class CokiSwimmingGuideConfigurationException implements Exception {
  const CokiSwimmingGuideConfigurationException(this.description);

  final String description;
}

class CokiSwimmingGuideRequestException implements Exception {
  const CokiSwimmingGuideRequestException(this.description);

  final String description;
}

class CokiSwimmingGuideTurn {
  const CokiSwimmingGuideTurn({
    required this.content,
    required this.isFromGuide,
  });

  final String content;
  final bool isFromGuide;
}

class CokiSwimmingGuideService {
  CokiSwimmingGuideService._()
    : _dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 15),
          sendTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );

  static final CokiSwimmingGuideService instance = CokiSwimmingGuideService._();
  static const CokiSwimmingGuideCodec _codec = CokiSwimmingGuideCodec();
  static const String _installationKey = 'coki_swimming_installation_key';
  static final Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();
  static final math.Random _secureRandom = math.Random.secure();

  final Dio _dio;

  Future<String> requestReply(List<CokiSwimmingGuideTurn> turns) async {
    final externalTurns = turns
        .where((turn) => turn.content.trim().isNotEmpty)
        .map(
          (turn) => <String, String>{
            'role': turn.isFromGuide ? 'assistant' : 'user',
            'content': turn.content.trim(),
          },
        )
        .toList(growable: false);
    if (externalTurns.isEmpty) {
      throw const CokiSwimmingGuideRequestException(
        'Enter a swimming question and try again.',
      );
    }

    final endpoint = _resolveEndpoint();
    final package = await _packageInfo;
    final deviceNo = await _installationId();
    final encryptedBody = _codec.encode(
      jsonEncode(<String, dynamic>{
        'system': 'Swimming Expert',
        'dashScopeMessageDTOList': externalTurns,
      }),
    );
    try {
      final response = await _dio.post<dynamic>(
        endpoint,
        data: encryptedBody,
        options: Options(
          contentType: Headers.jsonContentType,
          responseType: ResponseType.plain,
          headers: <String, String>{
            'Accept': '*/*',
            'appVersion': package.version,
            'deviceNo': deviceNo,
            'pushToken': '',
            'appId': CokiSwimmingNetworkConfig.appId,
            'X-Coki-Trace': _randomHex(24),
            'X-Coki-Epoch': DateTime.now().millisecondsSinceEpoch.toString(),
            'X-Coki-Channel': Platform.isIOS ? 'ios-swimming' : 'flutter',
            'X-Coki-Locale': Platform.localeName,
          },
        ),
      );
      final reply = _decodeReply(response.data);
      if (reply.isEmpty) {
        throw const CokiSwimmingGuideRequestException(
          'Coki AI returned an empty reply. Please try again.',
        );
      }
      return reply;
    } on CokiSwimmingGuideConfigurationException {
      rethrow;
    } on CokiSwimmingGuideRequestException {
      rethrow;
    } on DioException catch (error) {
      final description = switch (error.type) {
        DioExceptionType.connectionTimeout ||
        DioExceptionType.sendTimeout ||
        DioExceptionType.receiveTimeout =>
          'The Coki AI request timed out. Please try again.',
        DioExceptionType.connectionError =>
          'Unable to reach Coki AI. Check your connection.',
        _ => 'Coki AI is temporarily unavailable.',
      };
      throw CokiSwimmingGuideRequestException(description);
    } on FormatException {
      throw const CokiSwimmingGuideRequestException(
        'Coki AI returned an invalid response.',
      );
    } on Object {
      throw const CokiSwimmingGuideRequestException(
        'Unable to complete the Coki AI request. Please try again.',
      );
    }
  }

  String _resolveEndpoint() {
    final configured = CokiSwimmingNetworkConfig.guidePath.trim();
    final complete = Uri.tryParse(configured);
    final endpoint = complete != null && complete.hasScheme
        ? complete
        : Uri.parse(CokiSwimmingNetworkConfig.baseUrl).resolve(configured);
    if (!endpoint.hasScheme ||
        endpoint.host.isEmpty ||
        !RegExp(r'^/opi/v1/.+s$').hasMatch(endpoint.path)) {
      throw const CokiSwimmingGuideConfigurationException(
        'The Coki AI service address is invalid.',
      );
    }
    return endpoint.toString();
  }

  String _decodeReply(dynamic responseData) {
    dynamic value = _codec.decodeResponse(responseData);
    if (value is String) {
      final normalized = value.trim();
      try {
        value = jsonDecode(normalized);
      } on FormatException {
        return normalized;
      }
    }
    if (value is Map && value.containsKey('result')) {
      final resultContent = _resultContent(value['result']);
      if (resultContent != null && resultContent.trim().isNotEmpty) {
        return resultContent.trim();
      }
      return _findReply(value['result'])?.trim() ?? '';
    }
    return _findReply(value)?.trim() ?? '';
  }

  String? _resultContent(dynamic result) {
    if (result is! Map) return result is String ? result : null;
    final output = result['output'];
    if (output is! Map) return null;
    final choices = output['choices'];
    if (choices is! List) return null;
    for (final choice in choices.reversed) {
      if (choice is! Map) continue;
      final externalTurn = choice['message'];
      if (externalTurn is! Map) continue;
      final content = externalTurn['content'];
      if (content is String && content.trim().isNotEmpty) return content;
    }
    return null;
  }

  String? _findReply(dynamic value) {
    if (value is String) return value;
    if (value is List) {
      for (final item in value.reversed) {
        final reply = _findReply(item);
        if (reply != null && reply.trim().isNotEmpty) return reply;
      }
    }
    if (value is Map) {
      const preferredKeys = <String>[
        'answer',
        'content',
        'text',
        'result',
        'data',
        'output',
        'choices',
      ];
      for (final key in preferredKeys) {
        if (!value.containsKey(key)) continue;
        final reply = _findReply(value[key]);
        if (reply != null && reply.trim().isNotEmpty) return reply;
      }
    }
    return null;
  }

  Future<String> _installationId() async {
    final preferences = SharedPreferencesAsync();
    final existing = await preferences.getString(_installationKey);
    final fallback = existing != null && existing.isNotEmpty
        ? existing
        : _randomHex(32);
    final deviceNo = Platform.isIOS
        ? await CokiSwimmingDeviceService.resolveDeviceNo(fallback: fallback)
        : fallback;
    if (existing != deviceNo) {
      await preferences.setString(_installationKey, deviceNo);
    }
    return deviceNo;
  }

  String _randomHex(int length) {
    const alphabet = '0123456789abcdef';
    return List<String>.generate(
      length,
      (_) => alphabet[_secureRandom.nextInt(alphabet.length)],
    ).join();
  }
}
