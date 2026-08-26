import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

enum CokiSwimmingPhotoSource { camera, library }

enum CokiSwimmingAvatarPickStatus {
  selected,
  canceled,
  denied,
  settingsRequired,
  invalidFile,
  failed,
}

class CokiSwimmingAvatarPickResult {
  const CokiSwimmingAvatarPickResult(this.status, {this.path});

  final CokiSwimmingAvatarPickStatus status;
  final String? path;
}

class CokiSwimmingAvatarService {
  CokiSwimmingAvatarService._();

  static final CokiSwimmingAvatarService instance =
      CokiSwimmingAvatarService._();

  final ImagePicker _picker = ImagePicker();

  Future<CokiSwimmingAvatarPickResult> pick(
    CokiSwimmingPhotoSource source,
  ) async {
    try {
      final permission = source == CokiSwimmingPhotoSource.camera
          ? Permission.camera
          : Permission.photos;
      var permissionStatus = await permission.status;
      if (!_isAuthorized(source, permissionStatus)) {
        permissionStatus = await permission.request();
      }
      if (!_isAuthorized(source, permissionStatus)) {
        final requiresSettings =
            permissionStatus.isPermanentlyDenied ||
            permissionStatus.isRestricted;
        return CokiSwimmingAvatarPickResult(
          requiresSettings
              ? CokiSwimmingAvatarPickStatus.settingsRequired
              : CokiSwimmingAvatarPickStatus.denied,
        );
      }

      final selected = await _picker.pickImage(
        source: source == CokiSwimmingPhotoSource.camera
            ? ImageSource.camera
            : ImageSource.gallery,
        maxWidth: 2048,
        maxHeight: 2048,
        imageQuality: 90,
      );
      if (selected == null) {
        return const CokiSwimmingAvatarPickResult(
          CokiSwimmingAvatarPickStatus.canceled,
        );
      }

      final file = File(selected.path);
      if (!await file.exists() || await file.length() == 0) {
        return const CokiSwimmingAvatarPickResult(
          CokiSwimmingAvatarPickStatus.invalidFile,
        );
      }
      return CokiSwimmingAvatarPickResult(
        CokiSwimmingAvatarPickStatus.selected,
        path: selected.path,
      );
    } catch (_) {
      return const CokiSwimmingAvatarPickResult(
        CokiSwimmingAvatarPickStatus.failed,
      );
    }
  }

  Future<String> persist({
    required String temporaryPath,
    required int memberId,
  }) async {
    final source = File(temporaryPath);
    if (!await source.exists() || await source.length() == 0) {
      throw const FileSystemException('Selected avatar is unavailable');
    }

    final root = await getApplicationDocumentsDirectory();
    final directory = Directory(
      p.join(root.path, 'coki_swimming_profiles', '$memberId'),
    );
    await directory.create(recursive: true);
    final extension = p.extension(temporaryPath).toLowerCase();
    final safeExtension = extension.isEmpty ? '.jpg' : extension;
    final destination = p.join(
      directory.path,
      'avatar_${DateTime.now().microsecondsSinceEpoch}$safeExtension',
    );
    final copied = await source.copy(destination);
    if (!await copied.exists() || await copied.length() == 0) {
      throw const FileSystemException('Unable to save selected avatar');
    }
    return copied.path;
  }

  Future<void> deleteOwnedAvatar(String? avatarPath, int memberId) async {
    if (avatarPath == null || avatarPath.isEmpty) return;
    final root = await getApplicationDocumentsDirectory();
    final memberDirectory = p.join(
      root.path,
      'coki_swimming_profiles',
      '$memberId',
    );
    if (!p.isWithin(memberDirectory, avatarPath)) return;
    final file = File(avatarPath);
    if (await file.exists()) await file.delete();
  }

  Future<bool> openSettings() => openAppSettings();

  bool _isAuthorized(CokiSwimmingPhotoSource source, PermissionStatus status) {
    return status.isGranted ||
        (source == CokiSwimmingPhotoSource.library && status.isLimited);
  }
}
