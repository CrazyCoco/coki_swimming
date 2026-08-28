part of '../main.dart';

class CokiSwimmingQ8m2v7x4n9z1p6r3t5 extends StatefulWidget {
  const CokiSwimmingQ8m2v7x4n9z1p6r3t5({super.key});

  @override
  State<CokiSwimmingQ8m2v7x4n9z1p6r3t5> createState() =>
      _CokiSwimmingW5n1z8q4m7x2p9r6t3();
}

class _CokiSwimmingW5n1z8q4m7x2p9r6t3
    extends State<CokiSwimmingQ8m2v7x4n9z1p6r3t5> {
  static const _cokiSwimmingE7q3m9v1x6z4p8r2t5 =
      'coki_swimming_daily_swim_log_v1';
  final _cokiSwimmingN4x8p2m7z1q6v9r3t5 = SharedPreferencesAsync();
  final _cokiSwimmingP9v3n6x1m8q4z7r2t5 = TextEditingController();
  final _cokiSwimmingR2m7q5z9x3n1v8p6t4 = TextEditingController();
  final _cokiSwimmingS6z1p4n8v2m9x5q7r3 = TextEditingController();
  final _cokiSwimmingT8q2x6m1z9v4n7p3r5 = TextEditingController();
  Map<String, Map<String, dynamic>> _cokiSwimmingU5n9m3x7q1z8p4v6r2 = {};
  String _cokiSwimmingV1q7z4m9x2n8p5r3t6 = 'Mixed';
  String _cokiSwimmingX3m8p1v6q9z2n4r7t5 = 'Normal';
  String _cokiSwimmingY6z2n9q4m1x7p8v3r5 = 'Good';
  bool _cokiSwimmingZ9p4x1m7v3q8n2r6t5 = true;

  String _cokiSwimmingA2n8v5q1m6z3p9r7t4(DateTime value) =>
      '${value.year.toString().padLeft(4, '0')}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}';

  @override
  void initState() {
    super.initState();
    _cokiSwimmingB7m3x9p1q6z8n4v2r5();
  }

  Future<void> _cokiSwimmingB7m3x9p1q6z8n4v2r5() async {
    final raw = await _cokiSwimmingN4x8p2m7z1q6v9r3t5.getString(
      _cokiSwimmingE7q3m9v1x6z4p8r2t5,
    );
    if (raw != null) {
      final decoded = jsonDecode(raw);
      if (decoded is Map) {
        _cokiSwimmingU5n9m3x7q1z8p4v6r2 = {};
        for (final item in decoded.entries) {
          _cokiSwimmingU5n9m3x7q1z8p4v6r2[item.key
              .toString()] = item.value is Map
              ? Map<String, dynamic>.from(item.value as Map)
              : {'hours': (item.value as num).toDouble()};
        }
      }
    }
    final current =
        _cokiSwimmingU5n9m3x7q1z8p4v6r2[_cokiSwimmingA2n8v5q1m6z3p9r7t4(
          DateTime.now(),
        )];
    if (current != null) {
      _cokiSwimmingP9v3n6x1m8q4z7r2t5.text = '${current['hours'] ?? ''}';
      _cokiSwimmingR2m7q5z9x3n1v8p6t4.text = '${current['distance'] ?? ''}';
      _cokiSwimmingS6z1p4n8v2m9x5q7r3.text = '${current['location'] ?? ''}';
      _cokiSwimmingT8q2x6m1z9v4n7p3r5.text = '${current['notes'] ?? ''}';
      _cokiSwimmingV1q7z4m9x2n8p5r3t6 =
          current['stroke']?.toString() ?? 'Mixed';
      _cokiSwimmingX3m8p1v6q9z2n4r7t5 =
          current['intensity']?.toString() ?? 'Normal';
      _cokiSwimmingY6z2n9q4m1x7p8v3r5 =
          current['bodyState']?.toString() ?? 'Good';
    }
    if (mounted) setState(() => _cokiSwimmingZ9p4x1m7v3q8n2r6t5 = false);
  }

  Future<void> _cokiSwimmingC1x7m4q9z2n8v6p3r5() async {
    final hours = double.tryParse(_cokiSwimmingP9v3n6x1m8q4z7r2t5.text.trim());
    final distance =
        double.tryParse(_cokiSwimmingR2m7q5z9x3n1v8p6t4.text.trim()) ?? 0;
    if (hours == null || hours <= 0 || hours > 24 || distance < 0) {
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
        context,
        'Enter valid training time and distance',
        isError: true,
      );
      return;
    }
    final key = _cokiSwimmingA2n8v5q1m6z3p9r7t4(DateTime.now());
    final next = {
      ..._cokiSwimmingU5n9m3x7q1z8p4v6r2,
      key: {
        'hours': hours,
        'distance': distance,
        'location': _cokiSwimmingS6z1p4n8v2m9x5q7r3.text.trim(),
        'stroke': _cokiSwimmingV1q7z4m9x2n8p5r3t6,
        'intensity': _cokiSwimmingX3m8p1v6q9z2n4r7t5,
        'bodyState': _cokiSwimmingY6z2n9q4m1x7p8v3r5,
        'notes': _cokiSwimmingT8q2x6m1z9v4n7p3r5.text.trim(),
      },
    };
    await _cokiSwimmingN4x8p2m7z1q6v9r3t5.setString(
      _cokiSwimmingE7q3m9v1x6z4p8r2t5,
      jsonEncode(next),
    );
    if (!mounted) return;
    setState(() => _cokiSwimmingU5n9m3x7q1z8p4v6r2 = next);
    FocusManager.instance.primaryFocus?.unfocus();
    CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
      context,
      'Today\'s swim record saved',
    );
  }

  int _cokiSwimmingD8q2v5m9x1n7p4z6r3() {
    var count = 0;
    var date = DateTime.now();
    while (_cokiSwimmingU5n9m3x7q1z8p4v6r2.containsKey(
      _cokiSwimmingA2n8v5q1m6z3p9r7t4(date),
    )) {
      count++;
      date = date.subtract(const Duration(days: 1));
    }
    return count;
  }

  @override
  void dispose() {
    for (final item in [
      _cokiSwimmingP9v3n6x1m8q4z7r2t5,
      _cokiSwimmingR2m7q5z9x3n1v8p6t4,
      _cokiSwimmingS6z1p4n8v2m9x5q7r3,
      _cokiSwimmingT8q2x6m1z9v4n7p3r5,
    ]) {
      item.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final today = _cokiSwimmingA2n8v5q1m6z3p9r7t4(DateTime.now());
    final values = _cokiSwimmingU5n9m3x7q1z8p4v6r2.entries.toList();
    final totalHours = values.fold<double>(
      0,
      (sum, item) => sum + ((item.value['hours'] as num?)?.toDouble() ?? 0),
    );
    final totalDistance = values.fold<double>(
      0,
      (sum, item) => sum + ((item.value['distance'] as num?)?.toDouble() ?? 0),
    );
    final weekStart = DateTime.now().subtract(
      Duration(days: DateTime.now().weekday - 1),
    );
    final week = values.where((item) {
      final date = DateTime.tryParse(item.key);
      return date != null &&
          !date.isBefore(
            DateTime(weekStart.year, weekStart.month, weekStart.day),
          );
    });
    final month = values.where(
      (item) => item.key.startsWith(
        '${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}',
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xFF100A30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          tooltip: 'Back',
          icon: Image.asset(
            'coki_swimming_y3qx9dqjtse69pju0/coki_swimming_9242ab81de8bd9181100.png',
            width: 24,
            height: 24,
          ),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        title: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Color(0xFF60D0EE), Color(0xFFAD99C2), Color(0xFFD43161)],
          ).createShader(bounds),
          child: const Text(
            'Daily swim check-in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: _cokiSwimmingZ9p4x1m7v3q8n2r6t5
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 30),
              children: [
                const SizedBox(height: 4),
                _cokiSwimmingE5n1q8z4m7v2x9p6r3(
                  'Today\'s swim',
                  Icons.pool_outlined,
                ),
                _cokiSwimmingF2v6m9x3q1z8n4p7r5(
                  'Location',
                  _cokiSwimmingS6z1p4n8v2m9x5q7r3,
                  TextInputType.text,
                ),
                Row(
                  children: [
                    Expanded(
                      child: _cokiSwimmingF2v6m9x3q1z8n4p7r5(
                        'Hours',
                        _cokiSwimmingP9v3n6x1m8q4z7r2t5,
                        const TextInputType.numberWithOptions(decimal: true),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: _cokiSwimmingF2v6m9x3q1n8p4r7(
                        'Distance (m)',
                        _cokiSwimmingR2m7q5z9x3n1v8p6t4,
                        const TextInputType.numberWithOptions(decimal: true),
                      ),
                    ),
                  ],
                ),
                _cokiSwimmingG8q3z7m1v6n9x2p4r5(
                  'Stroke',
                  _cokiSwimmingV1q7z4m9x2n8p5r3t6,
                  [
                    'Freestyle',
                    'Breaststroke',
                    'Backstroke',
                    'Butterfly',
                    'Mixed',
                  ],
                  (v) => setState(() => _cokiSwimmingV1q7z4m9x2n8p5r3t6 = v!),
                ),
                Row(
                  children: [
                    Expanded(
                      child: _cokiSwimmingG8q3z7m1v6n9x2p4r5(
                        'Intensity',
                        _cokiSwimmingX3m8p1v6q9z2n4r7t5,
                        ['Easy', 'Normal', 'Challenge'],
                        (v) => setState(
                          () => _cokiSwimmingX3m8p1v6q9z2n4r7t5 = v!,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: _cokiSwimmingG8q3z7m1v6n9x2p4r5(
                        'Body',
                        _cokiSwimmingY6z2n9q4m1x7p8v3r5,
                        ['Good', 'Okay', 'Tired'],
                        (v) => setState(
                          () => _cokiSwimmingY6z2n9q4m1x7p8v3r5 = v!,
                        ),
                      ),
                    ),
                  ],
                ),
                _cokiSwimmingF2v6m9x3q1z8n4p7r5(
                  'Notes',
                  _cokiSwimmingT8q2x6m1z9v4n7p3r5,
                  TextInputType.multiline,
                ),
                SizedBox(
                  height: 48,
                  child: FilledButton.icon(
                    onPressed: _cokiSwimmingC1x7m4q9z2n8v6p3r5,
                    icon: const Icon(Icons.check_rounded),
                    label: Text(
                      _cokiSwimmingU5n9m3x7q1z8p4v6r2.containsKey(today)
                          ? 'Update today\'s record'
                          : 'Complete check-in',
                    ),
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFFD43161),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                _cokiSwimmingE5n1q8z4m7v2x9p6r3(
                  'Statistics',
                  Icons.insights_outlined,
                ),
                Row(
                  children: [
                    _cokiSwimmingH7m2q9x4v1z8p6r3(
                      'Streak',
                      '${_cokiSwimmingD8q2v5m9x1n7p4z6r3()}',
                    ),
                    _cokiSwimmingH7m2q9x4v1z8p6r3(
                      'Total km',
                      (totalDistance / 1000).toStringAsFixed(1),
                    ),
                    _cokiSwimmingH7m2q9x4v1z8p6r3(
                      'Hours',
                      totalHours.toStringAsFixed(1),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'This week  ${week.length} swims · ${week.fold<double>(0, (s, e) => s + ((e.value['distance'] as num?)?.toDouble() ?? 0)).toStringAsFixed(0)} m',
                  style: const TextStyle(color: Color(0xFFB9B3CE)),
                ),
                Text(
                  'This month  ${month.length} swims',
                  style: const TextStyle(color: Color(0xFFB9B3CE)),
                ),
                const SizedBox(height: 18),
                _cokiSwimmingE5n1q8z4m7v2x9p6r3(
                  'Recent records',
                  Icons.calendar_month_rounded,
                ),
                if (_cokiSwimmingU5n9m3x7q1z8p4v6r2.isEmpty)
                  const Text(
                    'No check-ins yet',
                    style: TextStyle(color: Color(0xFFB9B3CE)),
                  )
                else
                  ...(_cokiSwimmingU5n9m3x7q1z8p4v6r2.entries.toList()
                        ..sort((a, b) => b.key.compareTo(a.key)))
                      .take(30)
                      .map(
                        (item) => ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFF60D0EE),
                            child: Icon(
                              Icons.water_drop_rounded,
                              color: Color(0xFF100A30),
                            ),
                          ),
                          title: Text(
                            item.key,
                            style: const TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            '${item.value['distance'] ?? 0} m · ${item.value['stroke'] ?? 'Mixed'}',
                            style: const TextStyle(color: Color(0xFFB9B3CE)),
                          ),
                          trailing: Text(
                            '${item.value['hours'] ?? 0} h',
                            style: const TextStyle(
                              color: Color(0xFF60D0EE),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
    );
  }

  Widget _cokiSwimmingE5n1q8z4m7v2x9p6r3(String value, IconData icon) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF60D0EE), size: 20),
            const SizedBox(width: 8),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      );
  Widget _cokiSwimmingF2v6m9x3q1z8n4p7r5(
    String label,
    TextEditingController controller,
    TextInputType type,
  ) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: TextField(
      controller: controller,
      keyboardType: type,
      maxLines: type == TextInputType.multiline ? 3 : 1,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFFB9B3CE)),
        filled: true,
        fillColor: const Color(0xFF292249),
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.04)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.04)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Color(0xFF60D0EE), width: 1.2),
        ),
      ),
    ),
  );
  Widget _cokiSwimmingF2v6m9x3q1n8p4r7(
    String label,
    TextEditingController controller,
    TextInputType type,
  ) => _cokiSwimmingF2v6m9x3q1z8n4p7r5(label, controller, type);
  Widget _cokiSwimmingG8q3z7m1v6n9x2p4r5(
    String label,
    String value,
    List<String> values,
    ValueChanged<String?> onChanged,
  ) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: DropdownButtonFormField<String>(
      initialValue: value,
      dropdownColor: const Color(0xFF292249),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFFB9B3CE)),
        filled: true,
        fillColor: const Color(0xFF292249),
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 12, 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.04)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.04)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Color(0xFF60D0EE), width: 1.2),
        ),
      ),
      items: values
          .map(
            (v) => DropdownMenuItem(
              value: v,
              child: Text(v, overflow: TextOverflow.ellipsis),
            ),
          )
          .toList(),
      onChanged: onChanged,
    ),
  );
  Widget _cokiSwimmingH7m2q9x4v1z8p6r3(String label, String value) => Expanded(
    child: Container(
      margin: const EdgeInsets.only(right: 6),
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF292249),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              color: Color(0xFF60D0EE),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            label,
            style: const TextStyle(color: Color(0xFFB9B3CE), fontSize: 11),
          ),
        ],
      ),
    ),
  );
}
