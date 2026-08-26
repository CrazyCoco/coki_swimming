import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'coki_swimming_storage_database.g.dart';

class CokiSwimmingMembers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get email => text().unique()();
  TextColumn get passwordDigest => text()();
  TextColumn get passwordSalt => text()();
  TextColumn get displayName => text().nullable()();
  TextColumn get avatarPath => text().nullable()();
  TextColumn get biography => text().nullable()();
  BoolColumn get profileCompleted =>
      boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

class CokiSwimmingStorageException implements Exception {
  const CokiSwimmingStorageException(this.message);

  final String message;

  @override
  String toString() => message;
}

@DriftDatabase(tables: [CokiSwimmingMembers])
class CokiSwimmingDatabase extends _$CokiSwimmingDatabase {
  CokiSwimmingDatabase._()
    : super(driftDatabase(name: 'coki_swimming_members'));

  static final CokiSwimmingDatabase instance = CokiSwimmingDatabase._();

  @override
  int get schemaVersion => 1;

  Future<CokiSwimmingMember?> memberById(int id) {
    return (select(
      cokiSwimmingMembers,
    )..where((row) => row.id.equals(id))).getSingleOrNull();
  }

  Future<int> createPendingMember({
    required String email,
    required String password,
  }) async {
    final normalizedEmail = _normalizeEmail(email);
    _validateEmail(normalizedEmail);
    _validatePassword(password);

    final existing = await _memberByEmail(normalizedEmail);
    if (existing != null) {
      throw const CokiSwimmingStorageException(
        'This email is already registered',
      );
    }

    final salt = _createSalt();
    final now = DateTime.now();
    return into(cokiSwimmingMembers).insert(
      CokiSwimmingMembersCompanion.insert(
        email: normalizedEmail,
        passwordDigest: _passwordDigest(password, salt),
        passwordSalt: salt,
        createdAt: now,
        updatedAt: now,
      ),
    );
  }

  Future<CokiSwimmingMember?> authenticate({
    required String email,
    required String password,
  }) async {
    final normalizedEmail = _normalizeEmail(email);
    _validateEmail(normalizedEmail);
    _validatePassword(password);
    final member = await _memberByEmail(normalizedEmail);
    if (member == null) return null;
    final digest = _passwordDigest(password, member.passwordSalt);
    return digest == member.passwordDigest ? member : null;
  }

  Future<void> completeProfile({
    required int memberId,
    required String displayName,
    required String avatarPath,
    String? biography,
  }) async {
    final normalizedName = displayName.trim();
    final normalizedAvatar = avatarPath.trim();
    if (normalizedName.isEmpty) {
      throw const CokiSwimmingStorageException('Please enter your name');
    }
    if (normalizedAvatar.isEmpty) {
      throw const CokiSwimmingStorageException('Please choose an avatar');
    }
    if (await memberById(memberId) == null) {
      throw const CokiSwimmingStorageException('Account no longer exists');
    }

    await (update(
      cokiSwimmingMembers,
    )..where((row) => row.id.equals(memberId))).write(
      CokiSwimmingMembersCompanion(
        displayName: Value(normalizedName),
        avatarPath: Value(normalizedAvatar),
        biography: Value(_nullableTrimmed(biography)),
        profileCompleted: const Value(true),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> updatePassword({
    required String email,
    required String password,
  }) async {
    final normalizedEmail = _normalizeEmail(email);
    _validateEmail(normalizedEmail);
    _validatePassword(password);
    final member = await _memberByEmail(normalizedEmail);
    if (member == null) {
      throw const CokiSwimmingStorageException('Account not found');
    }

    final salt = _createSalt();
    await (update(
      cokiSwimmingMembers,
    )..where((row) => row.id.equals(member.id))).write(
      CokiSwimmingMembersCompanion(
        passwordDigest: Value(_passwordDigest(password, salt)),
        passwordSalt: Value(salt),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> deleteMember(int memberId) async {
    await (delete(
      cokiSwimmingMembers,
    )..where((row) => row.id.equals(memberId))).go();
  }

  Future<CokiSwimmingMember?> _memberByEmail(String email) {
    return (select(
      cokiSwimmingMembers,
    )..where((row) => row.email.equals(email))).getSingleOrNull();
  }

  static String _normalizeEmail(String email) => email.trim().toLowerCase();

  static void _validateEmail(String email) {
    final valid = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(email);
    if (!valid) {
      throw const CokiSwimmingStorageException(
        'Please enter a valid email address',
      );
    }
  }

  static void _validatePassword(String password) {
    if (password.length < 6) {
      throw const CokiSwimmingStorageException(
        'Password must be at least 6 characters',
      );
    }
  }

  static String _createSalt() {
    final random = Random.secure();
    return base64UrlEncode(List<int>.generate(16, (_) => random.nextInt(256)));
  }

  static String _passwordDigest(String password, String salt) {
    List<int> bytes = utf8.encode('$salt:$password:coki_swimming_auth_v1');
    for (var round = 0; round < 12000; round++) {
      bytes = sha256.convert(bytes).bytes;
    }
    return base64UrlEncode(bytes);
  }

  static String? _nullableTrimmed(String? value) {
    final trimmed = value?.trim();
    return trimmed == null || trimmed.isEmpty ? null : trimmed;
  }
}

class CokiSwimmingSessionStore {
  const CokiSwimmingSessionStore._();

  static const String _memberIdKey = 'coki_swimming_current_member_id';

  static Future<int?> readMemberId() {
    return SharedPreferencesAsync().getInt(_memberIdKey);
  }

  static Future<void> writeMemberId(int memberId) {
    return SharedPreferencesAsync().setInt(_memberIdKey, memberId);
  }

  static Future<void> clear() {
    return SharedPreferencesAsync().remove(_memberIdKey);
  }
}
