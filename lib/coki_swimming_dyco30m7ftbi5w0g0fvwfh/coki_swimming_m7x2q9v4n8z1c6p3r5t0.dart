part of '../main.dart';

class CokiSwimmingM7x2q9v4n8z1c6p3r5t0 extends StatefulWidget {
  const CokiSwimmingM7x2q9v4n8z1c6p3r5t0({super.key});

  @override
  State<CokiSwimmingM7x2q9v4n8z1c6p3r5t0> createState() =>
      _CokiSwimmingR6p4x8n1z7m3q9v5t2();
}

class _CokiSwimmingR6p4x8n1z7m3q9v5t2
    extends State<CokiSwimmingM7x2q9v4n8z1c6p3r5t0> {
  static const _cokiSwimmingQ8v2m6x9n4p1z7r3t5 =
      'coki_swimming_training_plan_v1';
  static const _cokiSwimmingK4n8q1v6x3z9m2p7r5 =
      'coki_swimming_daily_swim_log_v1';
  final _cokiSwimmingX5m9q2v7n1z4p8r6t3 = SharedPreferencesAsync();
  String _cokiSwimmingA7n3x8q1m6v9z4p2r5 = 'Endurance';
  String _cokiSwimmingB9q4m1z7x3n8v6p2r5 = 'Novice';
  int _cokiSwimmingC6x2p9n4v1m7q8z3r5 = 3;
  int _cokiSwimmingD8z5v2m9q1x6n4p7r3 = 45;
  String _cokiSwimmingE1p7n3x9v5m2q8z4r6 = 'Freestyle';
  int _cokiSwimmingF4q8z1m6v3n9x2p7r5 = 4;
  Set<String> _cokiSwimmingH2x6n9p3m7q1v8z4r5 = {};

  @override
  void initState() {
    super.initState();
    _cokiSwimmingJ5z1q8v4n6m2x9p3r7();
  }

  String _cokiSwimmingL7p2m9x5v1n8q4z6r3(DateTime value) =>
      '${value.year.toString().padLeft(4, '0')}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}';

  Future<void> _cokiSwimmingJ5z1q8v4n6m2x9p3r7() async {
    final value = await _cokiSwimmingX5m9q2v7n1z4p8r6t3.getString(
      _cokiSwimmingQ8v2m6x9n4p1z7r3t5,
    );
    if (value != null) {
      final decoded = jsonDecode(value);
      if (decoded is Map) {
        final cokiSwimmingB8q4m1z7x9n3v6p2r5 = decoded['goal'];
        final cokiSwimmingC6n2p8v4m9q1z7x3r5 = decoded['level'];
        final cokiSwimmingD9x3m7q1v5n8z2p6r4 = decoded['frequency'];
        final cokiSwimmingE2z6p9n3v7m1x8q4r5 = decoded['duration'];
        final cokiSwimmingF5m1q8v4z7n2x9p3r6 = decoded['stroke'];
        final cokiSwimmingH7n3x9p1m6q8v4z2r5 = decoded['weeks'];
        if (cokiSwimmingB8q4m1z7x9n3v6p2r5 is String) {
          _cokiSwimmingA7n3x8q1m6v9z4p2r5 = cokiSwimmingB8q4m1z7x9n3v6p2r5;
        }
        if (cokiSwimmingC6n2p8v4m9q1z7x3r5 is String) {
          _cokiSwimmingB9q4m1z7x3n8v6p2r5 = cokiSwimmingC6n2p8v4m9q1z7x3r5;
        }
        if (cokiSwimmingD9x3m7q1v5n8z2p6r4 is num) {
          _cokiSwimmingC6x2p9n4v1m7q8z3r5 = cokiSwimmingD9x3m7q1v5n8z2p6r4
              .toInt();
        }
        if (cokiSwimmingE2z6p9n3v7m1x8q4r5 is num) {
          _cokiSwimmingD8z5v2m9q1x6n4p7r3 = cokiSwimmingE2z6p9n3v7m1x8q4r5
              .toInt();
        }
        if (cokiSwimmingF5m1q8v4z7n2x9p3r6 is String) {
          _cokiSwimmingE1p7n3x9v5m2q8z4r6 = cokiSwimmingF5m1q8v4z7n2x9p3r6;
        }
        if (cokiSwimmingH7n3x9p1m6q8v4z2r5 is num) {
          _cokiSwimmingF4q8z1m6v3n9x2p7r5 = cokiSwimmingH7n3x9p1m6q8v4z2r5
              .toInt();
        }
        final done = decoded['completed'];
        if (done is List) {
          _cokiSwimmingH2x6n9p3m7q1v8z4r5 = done
              .map((e) => e.toString())
              .toSet();
        }
      }
    }
    if (mounted) setState(() {});
  }

  Future<void> _cokiSwimmingN3v8q2m6x1z7p4r9t5() async {
    final today = _cokiSwimmingL7p2m9x5v1n8q4z6r3(DateTime.now());
    final next = {..._cokiSwimmingH2x6n9p3m7q1v8z4r5, today};
    await _cokiSwimmingX5m9q2v7n1z4p8r6t3.setString(
      _cokiSwimmingQ8v2m6x9n4p1z7r3t5,
      jsonEncode({
        'goal': _cokiSwimmingA7n3x8q1m6v9z4p2r5,
        'level': _cokiSwimmingB9q4m1z7x3n8v6p2r5,
        'frequency': _cokiSwimmingC6x2p9n4v1m7q8z3r5,
        'duration': _cokiSwimmingD8z5v2m9q1x6n4p7r3,
        'stroke': _cokiSwimmingE1p7n3x9v5m2q8z4r6,
        'weeks': _cokiSwimmingF4q8z1m6v3n9x2p7r5,
        'completed': next.toList(),
      }),
    );
    if (mounted) {
      setState(() {
        _cokiSwimmingH2x6n9p3m7q1v8z4r5 = next;
      });
    }
    await _cokiSwimmingP6m1x8q4v9z3n7r5();
    if (mounted) {
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
        context,
        'Training completed and added to today\'s check-in',
      );
    }
  }

  Future<void> _cokiSwimmingY6p2n9x4v1m8q7z3r5() async {
    await _cokiSwimmingX5m9q2v7n1z4p8r6t3.setString(
      _cokiSwimmingQ8v2m6x9n4p1z7r3t5,
      jsonEncode({
        'goal': _cokiSwimmingA7n3x8q1m6v9z4p2r5,
        'level': _cokiSwimmingB9q4m1z7x3n8v6p2r5,
        'frequency': _cokiSwimmingC6x2p9n4v1m7q8z3r5,
        'duration': _cokiSwimmingD8z5v2m9q1x6n4p7r3,
        'stroke': _cokiSwimmingE1p7n3x9v5m2q8z4r6,
        'weeks': _cokiSwimmingF4q8z1m6v3n9x2p7r5,
        'completed': _cokiSwimmingH2x6n9p3m7q1v8z4r5.toList(),
      }),
    );
    if (mounted) {
      CokiSwimmingAy2dg3calz2y.pbp5sjg2i7oab6zl9h(
        context,
        'Training plan saved',
      );
    }
  }

  Future<void> _cokiSwimmingP6m1x8q4v9z3n7r5() async {
    final raw = await _cokiSwimmingX5m9q2v7n1z4p8r6t3.getString(
      _cokiSwimmingK4n8q1v6x3z9m2p7r5,
    );
    final Map<String, dynamic> records = {};
    if (raw != null) {
      final decoded = jsonDecode(raw);
      if (decoded is Map) {
        for (final entry in decoded.entries) {
          records[entry.key.toString()] = entry.value is Map
              ? Map<String, dynamic>.from(entry.value as Map)
              : {'hours': (entry.value as num).toDouble()};
        }
      }
    }
    final key = _cokiSwimmingL7p2m9x5v1n8q4z6r3(DateTime.now());
    records[key] = {
      ...(records[key] as Map? ?? {}),
      'hours': _cokiSwimmingD8z5v2m9q1x6n4p7r3 / 60.0,
      'distance': 1200,
      'stroke': _cokiSwimmingE1p7n3x9v5m2q8z4r6,
      'notes': 'Training plan',
    };
    await _cokiSwimmingX5m9q2v7n1z4p8r6t3.setString(
      _cokiSwimmingK4n8q1v6x3z9m2p7r5,
      jsonEncode(records),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: const Color(0xFF100A30),
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        tooltip: 'Back',
        icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
        onPressed: () => Navigator.of(context).maybePop(),
      ),
      title: const Text(
        'Training plan',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
      ),
    ),
    body: ListView(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
      children: [
        const SizedBox(height: 4),
        _cokiSwimmingS4n8q2m6v1z7p3r9t5('Build your plan', Icons.tune_rounded),
        _cokiSwimmingT9x3m7q1v5n8z2p6r4(
          'Goal',
          _cokiSwimmingA7n3x8q1m6v9z4p2r5,
          [
            'Fat loss',
            'Endurance',
            'Speed',
            'Recovery',
            'Race prep',
            'Learn to swim',
          ],
          (v) => setState(() => _cokiSwimmingA7n3x8q1m6v9z4p2r5 = v!),
        ),
        _cokiSwimmingT9x3m7q1v5n8z2p6r4(
          'Level',
          _cokiSwimmingB9q4m1z7x3n8v6p2r5,
          ['Beginner', 'Novice', 'Intermediate', 'Advanced'],
          (v) => setState(() => _cokiSwimmingB9q4m1z7x3n8v6p2r5 = v!),
        ),
        Row(
          children: [
            Expanded(
              child: _cokiSwimmingU2p6z9n3v7m1x8q4r5(
                'Sessions / week',
                _cokiSwimmingC6x2p9n4v1m7q8z3r5,
                [1, 2, 3, 4, 5],
                (v) => setState(() => _cokiSwimmingC6x2p9n4v1m7q8z3r5 = v!),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _cokiSwimmingU2p6z9n3v7m1x8q4r5(
                'Minutes',
                _cokiSwimmingD8z5v2m9q1x6n4p7r3,
                [30, 45, 60, 90],
                (v) => setState(() => _cokiSwimmingD8z5v2m9q1x6n4p7r3 = v!),
              ),
            ),
          ],
        ),
        _cokiSwimmingT9x3m7q1v5n8z2p6r4(
          'Stroke',
          _cokiSwimmingE1p7n3x9v5m2q8z4r6,
          ['Freestyle', 'Breaststroke', 'Mixed'],
          (v) => setState(() => _cokiSwimmingE1p7n3x9v5m2q8z4r6 = v!),
        ),
        _cokiSwimmingU2p6z9n3v7m1x8q4r5(
          'Plan length (weeks)',
          _cokiSwimmingF4q8z1m6v3n9x2p7r5,
          [2, 4, 8, 12],
          (v) => setState(() => _cokiSwimmingF4q8z1m6v3n9x2p7r5 = v!),
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: 46,
          child: FilledButton.icon(
            onPressed: _cokiSwimmingY6p2n9x4v1m8q7z3r5,
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('Create / update plan'),
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFFD43161),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        _cokiSwimmingS4n8q2m6v1z7p3r9t5(
          'Training calendar',
          Icons.calendar_month_rounded,
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(
            7,
            (cokiSwimmingJ4z8p2n6v1q9m3x7r5) => Container(
              width: 39,
              height: 39,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:
                    cokiSwimmingJ4z8p2n6v1q9m3x7r5 <
                        _cokiSwimmingC6x2p9n4v1m7q8z3r5
                    ? const Color(0xFF60D0EE)
                    : const Color(0xFF292249),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '${cokiSwimmingJ4z8p2n6v1q9m3x7r5 + 1}',
                style: TextStyle(
                  color:
                      cokiSwimmingJ4z8p2n6v1q9m3x7r5 <
                          _cokiSwimmingC6x2p9n4v1m7q8z3r5
                      ? const Color(0xFF100A30)
                      : Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        _cokiSwimmingS4n8q2m6v1z7p3r9t5(
          'Today\'s training',
          Icons.pool_rounded,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF292249),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$_cokiSwimmingA7n3x8q1m6v9z4p2r5 · $_cokiSwimmingD8z5v2m9q1x6n4p7r3 min',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 14),
              _cokiSwimmingV6q1n8z4m7x3p9r2t5(
                'Warm-up',
                '200m · easy · $_cokiSwimmingE1p7n3x9v5m2q8z4r6',
              ),
              _cokiSwimmingV6q1n8z4m7x3p9r2t5(
                'Technique',
                '4 × 50m · drill · 20s rest',
              ),
              _cokiSwimmingV6q1n8z4m7x3p9r2t5(
                'Main set',
                '6 × 100m · moderate · 30s rest',
              ),
              _cokiSwimmingV6q1n8z4m7x3p9r2t5(
                'Cool-down',
                '100m · easy · recovery',
              ),
              const SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                height: 44,
                child: FilledButton(
                  onPressed: _cokiSwimmingN3v8q2m6x1z7p4r9t5,
                  child: Text(
                    _cokiSwimmingH2x6n9p3m7q1v8z4r5.contains(
                          _cokiSwimmingL7p2m9x5v1n8q4z6r3(DateTime.now()),
                        )
                        ? 'Completed today'
                        : 'Complete today',
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        _cokiSwimmingS4n8q2m6v1z7p3r9t5(
          'Plan progress',
          Icons.insights_rounded,
        ),
        Text(
          '${_cokiSwimmingH2x6n9p3m7q1v8z4r5.length} completed sessions · $_cokiSwimmingF4q8z1m6v3n9x2p7r5 week plan',
          style: const TextStyle(color: Color(0xFFB9B3CE)),
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value:
              (_cokiSwimmingH2x6n9p3m7q1v8z4r5.length /
                      (_cokiSwimmingF4q8z1m6v3n9x2p7r5 *
                          _cokiSwimmingC6x2p9n4v1m7q8z3r5))
                  .clamp(0.0, 1.0),
          minHeight: 8,
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF60D0EE),
          backgroundColor: const Color(0xFF292249),
        ),
      ],
    ),
  );

  Widget _cokiSwimmingS4n8q2m6v1z7p3r9t5(String value, IconData icon) =>
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
  Widget _cokiSwimmingT9x3m7q1v5n8z2p6r4(
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
          .map((v) => DropdownMenuItem(value: v, child: Text(v)))
          .toList(),
      onChanged: onChanged,
    ),
  );
  Widget _cokiSwimmingU2p6z9n3v7m1x8q4r5(
    String label,
    int value,
    List<int> values,
    ValueChanged<int?> onChanged,
  ) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: DropdownButtonFormField<int>(
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
          .map((v) => DropdownMenuItem(value: v, child: Text('$v')))
          .toList(),
      onChanged: onChanged,
    ),
  );
  Widget _cokiSwimmingV6q1n8z4m7x3p9r2t5(String title, String detail) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            const Icon(
              Icons.check_circle_outline_rounded,
              color: Color(0xFF60D0EE),
              size: 19,
            ),
            const SizedBox(width: 9),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Text(
              detail,
              style: const TextStyle(color: Color(0xFFB9B3CE), fontSize: 12),
            ),
          ],
        ),
      );
}
