// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coki_swimming_kapytjs8qqm40i.dart';

// ignore_for_file: type=lint
class $CokiSwimmingMembersTable extends CokiSwimmingMembers
    with TableInfo<$CokiSwimmingMembersTable, CokiSwimmingMember> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CokiSwimmingMembersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _passwordDigestMeta = const VerificationMeta(
    'passwordDigest',
  );
  @override
  late final GeneratedColumn<String> passwordDigest = GeneratedColumn<String>(
    'password_digest',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _passwordSaltMeta = const VerificationMeta(
    'passwordSalt',
  );
  @override
  late final GeneratedColumn<String> passwordSalt = GeneratedColumn<String>(
    'password_salt',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _displayNameMeta = const VerificationMeta(
    'displayName',
  );
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
    'display_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _avatarPathMeta = const VerificationMeta(
    'avatarPath',
  );
  @override
  late final GeneratedColumn<String> avatarPath = GeneratedColumn<String>(
    'avatar_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _biographyMeta = const VerificationMeta(
    'biography',
  );
  @override
  late final GeneratedColumn<String> biography = GeneratedColumn<String>(
    'biography',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _coinBalanceMeta = const VerificationMeta(
    'coinBalance',
  );
  @override
  late final GeneratedColumn<int> coinBalance = GeneratedColumn<int>(
    'coin_balance',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _profileCompletedMeta = const VerificationMeta(
    'profileCompleted',
  );
  @override
  late final GeneratedColumn<bool> profileCompleted = GeneratedColumn<bool>(
    'profile_completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("profile_completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    email,
    passwordDigest,
    passwordSalt,
    displayName,
    avatarPath,
    biography,
    coinBalance,
    profileCompleted,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'coki_swimming_members';
  @override
  VerificationContext validateIntegrity(
    Insertable<CokiSwimmingMember> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password_digest')) {
      context.handle(
        _passwordDigestMeta,
        passwordDigest.isAcceptableOrUnknown(
          data['password_digest']!,
          _passwordDigestMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_passwordDigestMeta);
    }
    if (data.containsKey('password_salt')) {
      context.handle(
        _passwordSaltMeta,
        passwordSalt.isAcceptableOrUnknown(
          data['password_salt']!,
          _passwordSaltMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_passwordSaltMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
        _displayNameMeta,
        displayName.isAcceptableOrUnknown(
          data['display_name']!,
          _displayNameMeta,
        ),
      );
    }
    if (data.containsKey('avatar_path')) {
      context.handle(
        _avatarPathMeta,
        avatarPath.isAcceptableOrUnknown(data['avatar_path']!, _avatarPathMeta),
      );
    }
    if (data.containsKey('biography')) {
      context.handle(
        _biographyMeta,
        biography.isAcceptableOrUnknown(data['biography']!, _biographyMeta),
      );
    }
    if (data.containsKey('coin_balance')) {
      context.handle(
        _coinBalanceMeta,
        coinBalance.isAcceptableOrUnknown(
          data['coin_balance']!,
          _coinBalanceMeta,
        ),
      );
    }
    if (data.containsKey('profile_completed')) {
      context.handle(
        _profileCompletedMeta,
        profileCompleted.isAcceptableOrUnknown(
          data['profile_completed']!,
          _profileCompletedMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CokiSwimmingMember map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CokiSwimmingMember(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      passwordDigest: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password_digest'],
      )!,
      passwordSalt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password_salt'],
      )!,
      displayName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_name'],
      ),
      avatarPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar_path'],
      ),
      biography: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}biography'],
      ),
      coinBalance: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}coin_balance'],
      )!,
      profileCompleted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}profile_completed'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $CokiSwimmingMembersTable createAlias(String alias) {
    return $CokiSwimmingMembersTable(attachedDatabase, alias);
  }
}

class CokiSwimmingMember extends DataClass
    implements Insertable<CokiSwimmingMember> {
  final int id;
  final String email;
  final String passwordDigest;
  final String passwordSalt;
  final String? displayName;
  final String? avatarPath;
  final String? biography;
  final int coinBalance;
  final bool profileCompleted;
  final DateTime createdAt;
  final DateTime updatedAt;
  const CokiSwimmingMember({
    required this.id,
    required this.email,
    required this.passwordDigest,
    required this.passwordSalt,
    this.displayName,
    this.avatarPath,
    this.biography,
    required this.coinBalance,
    required this.profileCompleted,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['email'] = Variable<String>(email);
    map['password_digest'] = Variable<String>(passwordDigest);
    map['password_salt'] = Variable<String>(passwordSalt);
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || avatarPath != null) {
      map['avatar_path'] = Variable<String>(avatarPath);
    }
    if (!nullToAbsent || biography != null) {
      map['biography'] = Variable<String>(biography);
    }
    map['coin_balance'] = Variable<int>(coinBalance);
    map['profile_completed'] = Variable<bool>(profileCompleted);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CokiSwimmingMembersCompanion toCompanion(bool nullToAbsent) {
    return CokiSwimmingMembersCompanion(
      id: Value(id),
      email: Value(email),
      passwordDigest: Value(passwordDigest),
      passwordSalt: Value(passwordSalt),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      avatarPath: avatarPath == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarPath),
      biography: biography == null && nullToAbsent
          ? const Value.absent()
          : Value(biography),
      coinBalance: Value(coinBalance),
      profileCompleted: Value(profileCompleted),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory CokiSwimmingMember.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CokiSwimmingMember(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      passwordDigest: serializer.fromJson<String>(json['passwordDigest']),
      passwordSalt: serializer.fromJson<String>(json['passwordSalt']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      avatarPath: serializer.fromJson<String?>(json['avatarPath']),
      biography: serializer.fromJson<String?>(json['biography']),
      coinBalance: serializer.fromJson<int>(json['coinBalance']),
      profileCompleted: serializer.fromJson<bool>(json['profileCompleted']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String>(email),
      'passwordDigest': serializer.toJson<String>(passwordDigest),
      'passwordSalt': serializer.toJson<String>(passwordSalt),
      'displayName': serializer.toJson<String?>(displayName),
      'avatarPath': serializer.toJson<String?>(avatarPath),
      'biography': serializer.toJson<String?>(biography),
      'coinBalance': serializer.toJson<int>(coinBalance),
      'profileCompleted': serializer.toJson<bool>(profileCompleted),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CokiSwimmingMember copyWith({
    int? id,
    String? email,
    String? passwordDigest,
    String? passwordSalt,
    Value<String?> displayName = const Value.absent(),
    Value<String?> avatarPath = const Value.absent(),
    Value<String?> biography = const Value.absent(),
    int? coinBalance,
    bool? profileCompleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => CokiSwimmingMember(
    id: id ?? this.id,
    email: email ?? this.email,
    passwordDigest: passwordDigest ?? this.passwordDigest,
    passwordSalt: passwordSalt ?? this.passwordSalt,
    displayName: displayName.present ? displayName.value : this.displayName,
    avatarPath: avatarPath.present ? avatarPath.value : this.avatarPath,
    biography: biography.present ? biography.value : this.biography,
    coinBalance: coinBalance ?? this.coinBalance,
    profileCompleted: profileCompleted ?? this.profileCompleted,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  CokiSwimmingMember copyWithCompanion(CokiSwimmingMembersCompanion data) {
    return CokiSwimmingMember(
      id: data.id.present ? data.id.value : this.id,
      email: data.email.present ? data.email.value : this.email,
      passwordDigest: data.passwordDigest.present
          ? data.passwordDigest.value
          : this.passwordDigest,
      passwordSalt: data.passwordSalt.present
          ? data.passwordSalt.value
          : this.passwordSalt,
      displayName: data.displayName.present
          ? data.displayName.value
          : this.displayName,
      avatarPath: data.avatarPath.present
          ? data.avatarPath.value
          : this.avatarPath,
      biography: data.biography.present ? data.biography.value : this.biography,
      coinBalance: data.coinBalance.present
          ? data.coinBalance.value
          : this.coinBalance,
      profileCompleted: data.profileCompleted.present
          ? data.profileCompleted.value
          : this.profileCompleted,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CokiSwimmingMember(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('passwordDigest: $passwordDigest, ')
          ..write('passwordSalt: $passwordSalt, ')
          ..write('displayName: $displayName, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('biography: $biography, ')
          ..write('coinBalance: $coinBalance, ')
          ..write('profileCompleted: $profileCompleted, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    email,
    passwordDigest,
    passwordSalt,
    displayName,
    avatarPath,
    biography,
    coinBalance,
    profileCompleted,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CokiSwimmingMember &&
          other.id == this.id &&
          other.email == this.email &&
          other.passwordDigest == this.passwordDigest &&
          other.passwordSalt == this.passwordSalt &&
          other.displayName == this.displayName &&
          other.avatarPath == this.avatarPath &&
          other.biography == this.biography &&
          other.coinBalance == this.coinBalance &&
          other.profileCompleted == this.profileCompleted &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CokiSwimmingMembersCompanion extends UpdateCompanion<CokiSwimmingMember> {
  final Value<int> id;
  final Value<String> email;
  final Value<String> passwordDigest;
  final Value<String> passwordSalt;
  final Value<String?> displayName;
  final Value<String?> avatarPath;
  final Value<String?> biography;
  final Value<int> coinBalance;
  final Value<bool> profileCompleted;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CokiSwimmingMembersCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.passwordDigest = const Value.absent(),
    this.passwordSalt = const Value.absent(),
    this.displayName = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.biography = const Value.absent(),
    this.coinBalance = const Value.absent(),
    this.profileCompleted = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CokiSwimmingMembersCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    required String passwordDigest,
    required String passwordSalt,
    this.displayName = const Value.absent(),
    this.avatarPath = const Value.absent(),
    this.biography = const Value.absent(),
    this.coinBalance = const Value.absent(),
    this.profileCompleted = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : email = Value(email),
       passwordDigest = Value(passwordDigest),
       passwordSalt = Value(passwordSalt),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<CokiSwimmingMember> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<String>? passwordDigest,
    Expression<String>? passwordSalt,
    Expression<String>? displayName,
    Expression<String>? avatarPath,
    Expression<String>? biography,
    Expression<int>? coinBalance,
    Expression<bool>? profileCompleted,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (passwordDigest != null) 'password_digest': passwordDigest,
      if (passwordSalt != null) 'password_salt': passwordSalt,
      if (displayName != null) 'display_name': displayName,
      if (avatarPath != null) 'avatar_path': avatarPath,
      if (biography != null) 'biography': biography,
      if (coinBalance != null) 'coin_balance': coinBalance,
      if (profileCompleted != null) 'profile_completed': profileCompleted,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CokiSwimmingMembersCompanion copyWith({
    Value<int>? id,
    Value<String>? email,
    Value<String>? passwordDigest,
    Value<String>? passwordSalt,
    Value<String?>? displayName,
    Value<String?>? avatarPath,
    Value<String?>? biography,
    Value<int>? coinBalance,
    Value<bool>? profileCompleted,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
  }) {
    return CokiSwimmingMembersCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      passwordDigest: passwordDigest ?? this.passwordDigest,
      passwordSalt: passwordSalt ?? this.passwordSalt,
      displayName: displayName ?? this.displayName,
      avatarPath: avatarPath ?? this.avatarPath,
      biography: biography ?? this.biography,
      coinBalance: coinBalance ?? this.coinBalance,
      profileCompleted: profileCompleted ?? this.profileCompleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (passwordDigest.present) {
      map['password_digest'] = Variable<String>(passwordDigest.value);
    }
    if (passwordSalt.present) {
      map['password_salt'] = Variable<String>(passwordSalt.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (avatarPath.present) {
      map['avatar_path'] = Variable<String>(avatarPath.value);
    }
    if (biography.present) {
      map['biography'] = Variable<String>(biography.value);
    }
    if (coinBalance.present) {
      map['coin_balance'] = Variable<int>(coinBalance.value);
    }
    if (profileCompleted.present) {
      map['profile_completed'] = Variable<bool>(profileCompleted.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CokiSwimmingMembersCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('passwordDigest: $passwordDigest, ')
          ..write('passwordSalt: $passwordSalt, ')
          ..write('displayName: $displayName, ')
          ..write('avatarPath: $avatarPath, ')
          ..write('biography: $biography, ')
          ..write('coinBalance: $coinBalance, ')
          ..write('profileCompleted: $profileCompleted, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CokiSwimmingGuideLinesTable extends CokiSwimmingGuideLines
    with TableInfo<$CokiSwimmingGuideLinesTable, CokiSwimmingGuideLine> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CokiSwimmingGuideLinesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _memberIdMeta = const VerificationMeta(
    'memberId',
  );
  @override
  late final GeneratedColumn<int> memberId = GeneratedColumn<int>(
    'member_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contentMeta = const VerificationMeta(
    'content',
  );
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
    'content',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fromGuideMeta = const VerificationMeta(
    'fromGuide',
  );
  @override
  late final GeneratedColumn<bool> fromGuide = GeneratedColumn<bool>(
    'from_guide',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("from_guide" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    memberId,
    content,
    fromGuide,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'coki_swimming_guide_lines';
  @override
  VerificationContext validateIntegrity(
    Insertable<CokiSwimmingGuideLine> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('member_id')) {
      context.handle(
        _memberIdMeta,
        memberId.isAcceptableOrUnknown(data['member_id']!, _memberIdMeta),
      );
    } else if (isInserting) {
      context.missing(_memberIdMeta);
    }
    if (data.containsKey('content')) {
      context.handle(
        _contentMeta,
        content.isAcceptableOrUnknown(data['content']!, _contentMeta),
      );
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('from_guide')) {
      context.handle(
        _fromGuideMeta,
        fromGuide.isAcceptableOrUnknown(data['from_guide']!, _fromGuideMeta),
      );
    } else if (isInserting) {
      context.missing(_fromGuideMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CokiSwimmingGuideLine map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CokiSwimmingGuideLine(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      memberId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}member_id'],
      )!,
      content: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}content'],
      )!,
      fromGuide: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}from_guide'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $CokiSwimmingGuideLinesTable createAlias(String alias) {
    return $CokiSwimmingGuideLinesTable(attachedDatabase, alias);
  }
}

class CokiSwimmingGuideLine extends DataClass
    implements Insertable<CokiSwimmingGuideLine> {
  final int id;
  final int memberId;
  final String content;
  final bool fromGuide;
  final DateTime createdAt;
  const CokiSwimmingGuideLine({
    required this.id,
    required this.memberId,
    required this.content,
    required this.fromGuide,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['member_id'] = Variable<int>(memberId);
    map['content'] = Variable<String>(content);
    map['from_guide'] = Variable<bool>(fromGuide);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CokiSwimmingGuideLinesCompanion toCompanion(bool nullToAbsent) {
    return CokiSwimmingGuideLinesCompanion(
      id: Value(id),
      memberId: Value(memberId),
      content: Value(content),
      fromGuide: Value(fromGuide),
      createdAt: Value(createdAt),
    );
  }

  factory CokiSwimmingGuideLine.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CokiSwimmingGuideLine(
      id: serializer.fromJson<int>(json['id']),
      memberId: serializer.fromJson<int>(json['memberId']),
      content: serializer.fromJson<String>(json['content']),
      fromGuide: serializer.fromJson<bool>(json['fromGuide']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'memberId': serializer.toJson<int>(memberId),
      'content': serializer.toJson<String>(content),
      'fromGuide': serializer.toJson<bool>(fromGuide),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  CokiSwimmingGuideLine copyWith({
    int? id,
    int? memberId,
    String? content,
    bool? fromGuide,
    DateTime? createdAt,
  }) => CokiSwimmingGuideLine(
    id: id ?? this.id,
    memberId: memberId ?? this.memberId,
    content: content ?? this.content,
    fromGuide: fromGuide ?? this.fromGuide,
    createdAt: createdAt ?? this.createdAt,
  );
  CokiSwimmingGuideLine copyWithCompanion(
    CokiSwimmingGuideLinesCompanion data,
  ) {
    return CokiSwimmingGuideLine(
      id: data.id.present ? data.id.value : this.id,
      memberId: data.memberId.present ? data.memberId.value : this.memberId,
      content: data.content.present ? data.content.value : this.content,
      fromGuide: data.fromGuide.present ? data.fromGuide.value : this.fromGuide,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CokiSwimmingGuideLine(')
          ..write('id: $id, ')
          ..write('memberId: $memberId, ')
          ..write('content: $content, ')
          ..write('fromGuide: $fromGuide, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, memberId, content, fromGuide, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CokiSwimmingGuideLine &&
          other.id == this.id &&
          other.memberId == this.memberId &&
          other.content == this.content &&
          other.fromGuide == this.fromGuide &&
          other.createdAt == this.createdAt);
}

class CokiSwimmingGuideLinesCompanion
    extends UpdateCompanion<CokiSwimmingGuideLine> {
  final Value<int> id;
  final Value<int> memberId;
  final Value<String> content;
  final Value<bool> fromGuide;
  final Value<DateTime> createdAt;
  const CokiSwimmingGuideLinesCompanion({
    this.id = const Value.absent(),
    this.memberId = const Value.absent(),
    this.content = const Value.absent(),
    this.fromGuide = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  CokiSwimmingGuideLinesCompanion.insert({
    this.id = const Value.absent(),
    required int memberId,
    required String content,
    required bool fromGuide,
    required DateTime createdAt,
  }) : memberId = Value(memberId),
       content = Value(content),
       fromGuide = Value(fromGuide),
       createdAt = Value(createdAt);
  static Insertable<CokiSwimmingGuideLine> custom({
    Expression<int>? id,
    Expression<int>? memberId,
    Expression<String>? content,
    Expression<bool>? fromGuide,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (memberId != null) 'member_id': memberId,
      if (content != null) 'content': content,
      if (fromGuide != null) 'from_guide': fromGuide,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CokiSwimmingGuideLinesCompanion copyWith({
    Value<int>? id,
    Value<int>? memberId,
    Value<String>? content,
    Value<bool>? fromGuide,
    Value<DateTime>? createdAt,
  }) {
    return CokiSwimmingGuideLinesCompanion(
      id: id ?? this.id,
      memberId: memberId ?? this.memberId,
      content: content ?? this.content,
      fromGuide: fromGuide ?? this.fromGuide,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (memberId.present) {
      map['member_id'] = Variable<int>(memberId.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (fromGuide.present) {
      map['from_guide'] = Variable<bool>(fromGuide.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CokiSwimmingGuideLinesCompanion(')
          ..write('id: $id, ')
          ..write('memberId: $memberId, ')
          ..write('content: $content, ')
          ..write('fromGuide: $fromGuide, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $CokiSwimmingStoreReceiptsTable extends CokiSwimmingStoreReceipts
    with TableInfo<$CokiSwimmingStoreReceiptsTable, CokiSwimmingStoreReceipt> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CokiSwimmingStoreReceiptsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _transactionKeyMeta = const VerificationMeta(
    'transactionKey',
  );
  @override
  late final GeneratedColumn<String> transactionKey = GeneratedColumn<String>(
    'transaction_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _memberIdMeta = const VerificationMeta(
    'memberId',
  );
  @override
  late final GeneratedColumn<int> memberId = GeneratedColumn<int>(
    'member_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    transactionKey,
    memberId,
    productId,
    quantity,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'coki_swimming_store_receipts';
  @override
  VerificationContext validateIntegrity(
    Insertable<CokiSwimmingStoreReceipt> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('transaction_key')) {
      context.handle(
        _transactionKeyMeta,
        transactionKey.isAcceptableOrUnknown(
          data['transaction_key']!,
          _transactionKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_transactionKeyMeta);
    }
    if (data.containsKey('member_id')) {
      context.handle(
        _memberIdMeta,
        memberId.isAcceptableOrUnknown(data['member_id']!, _memberIdMeta),
      );
    } else if (isInserting) {
      context.missing(_memberIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {transactionKey};
  @override
  CokiSwimmingStoreReceipt map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CokiSwimmingStoreReceipt(
      transactionKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}transaction_key'],
      )!,
      memberId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}member_id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $CokiSwimmingStoreReceiptsTable createAlias(String alias) {
    return $CokiSwimmingStoreReceiptsTable(attachedDatabase, alias);
  }
}

class CokiSwimmingStoreReceipt extends DataClass
    implements Insertable<CokiSwimmingStoreReceipt> {
  final String transactionKey;
  final int memberId;
  final String productId;
  final int quantity;
  final DateTime createdAt;
  const CokiSwimmingStoreReceipt({
    required this.transactionKey,
    required this.memberId,
    required this.productId,
    required this.quantity,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['transaction_key'] = Variable<String>(transactionKey);
    map['member_id'] = Variable<int>(memberId);
    map['product_id'] = Variable<String>(productId);
    map['quantity'] = Variable<int>(quantity);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CokiSwimmingStoreReceiptsCompanion toCompanion(bool nullToAbsent) {
    return CokiSwimmingStoreReceiptsCompanion(
      transactionKey: Value(transactionKey),
      memberId: Value(memberId),
      productId: Value(productId),
      quantity: Value(quantity),
      createdAt: Value(createdAt),
    );
  }

  factory CokiSwimmingStoreReceipt.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CokiSwimmingStoreReceipt(
      transactionKey: serializer.fromJson<String>(json['transactionKey']),
      memberId: serializer.fromJson<int>(json['memberId']),
      productId: serializer.fromJson<String>(json['productId']),
      quantity: serializer.fromJson<int>(json['quantity']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'transactionKey': serializer.toJson<String>(transactionKey),
      'memberId': serializer.toJson<int>(memberId),
      'productId': serializer.toJson<String>(productId),
      'quantity': serializer.toJson<int>(quantity),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  CokiSwimmingStoreReceipt copyWith({
    String? transactionKey,
    int? memberId,
    String? productId,
    int? quantity,
    DateTime? createdAt,
  }) => CokiSwimmingStoreReceipt(
    transactionKey: transactionKey ?? this.transactionKey,
    memberId: memberId ?? this.memberId,
    productId: productId ?? this.productId,
    quantity: quantity ?? this.quantity,
    createdAt: createdAt ?? this.createdAt,
  );
  CokiSwimmingStoreReceipt copyWithCompanion(
    CokiSwimmingStoreReceiptsCompanion data,
  ) {
    return CokiSwimmingStoreReceipt(
      transactionKey: data.transactionKey.present
          ? data.transactionKey.value
          : this.transactionKey,
      memberId: data.memberId.present ? data.memberId.value : this.memberId,
      productId: data.productId.present ? data.productId.value : this.productId,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CokiSwimmingStoreReceipt(')
          ..write('transactionKey: $transactionKey, ')
          ..write('memberId: $memberId, ')
          ..write('productId: $productId, ')
          ..write('quantity: $quantity, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(transactionKey, memberId, productId, quantity, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CokiSwimmingStoreReceipt &&
          other.transactionKey == this.transactionKey &&
          other.memberId == this.memberId &&
          other.productId == this.productId &&
          other.quantity == this.quantity &&
          other.createdAt == this.createdAt);
}

class CokiSwimmingStoreReceiptsCompanion
    extends UpdateCompanion<CokiSwimmingStoreReceipt> {
  final Value<String> transactionKey;
  final Value<int> memberId;
  final Value<String> productId;
  final Value<int> quantity;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const CokiSwimmingStoreReceiptsCompanion({
    this.transactionKey = const Value.absent(),
    this.memberId = const Value.absent(),
    this.productId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CokiSwimmingStoreReceiptsCompanion.insert({
    required String transactionKey,
    required int memberId,
    required String productId,
    required int quantity,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : transactionKey = Value(transactionKey),
       memberId = Value(memberId),
       productId = Value(productId),
       quantity = Value(quantity),
       createdAt = Value(createdAt);
  static Insertable<CokiSwimmingStoreReceipt> custom({
    Expression<String>? transactionKey,
    Expression<int>? memberId,
    Expression<String>? productId,
    Expression<int>? quantity,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (transactionKey != null) 'transaction_key': transactionKey,
      if (memberId != null) 'member_id': memberId,
      if (productId != null) 'product_id': productId,
      if (quantity != null) 'quantity': quantity,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CokiSwimmingStoreReceiptsCompanion copyWith({
    Value<String>? transactionKey,
    Value<int>? memberId,
    Value<String>? productId,
    Value<int>? quantity,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return CokiSwimmingStoreReceiptsCompanion(
      transactionKey: transactionKey ?? this.transactionKey,
      memberId: memberId ?? this.memberId,
      productId: productId ?? this.productId,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (transactionKey.present) {
      map['transaction_key'] = Variable<String>(transactionKey.value);
    }
    if (memberId.present) {
      map['member_id'] = Variable<int>(memberId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CokiSwimmingStoreReceiptsCompanion(')
          ..write('transactionKey: $transactionKey, ')
          ..write('memberId: $memberId, ')
          ..write('productId: $productId, ')
          ..write('quantity: $quantity, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CokiSwimming73e845eb8995e10d78699Table
    extends CokiSwimming73e845eb8995e10d78699
    with
        TableInfo<
          $CokiSwimming73e845eb8995e10d78699Table,
          CokiSwimming73e845eb8995e10d78699Data
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CokiSwimming73e845eb8995e10d78699Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cokiSwimmingCe270c0c89ce45814c97b26dMeta =
      const VerificationMeta('cokiSwimmingCe270c0c89ce45814c97b26d');
  @override
  late final GeneratedColumn<int> cokiSwimmingCe270c0c89ce45814c97b26d =
      GeneratedColumn<int>(
        'coki_swimming_ce270c0c89ce45814c97b26d',
        aliasedName,
        false,
        hasAutoIncrement: true,
        type: DriftSqlType.int,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'PRIMARY KEY AUTOINCREMENT',
        ),
      );
  static const VerificationMeta _cokiSwimming374c2d33d71555cMeta =
      const VerificationMeta('cokiSwimming374c2d33d71555c');
  @override
  late final GeneratedColumn<int> cokiSwimming374c2d33d71555c =
      GeneratedColumn<int>(
        'coki_swimming374c2d33d71555c',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _cokiSwimming7b6a39bc7b3edf2290dcea74Meta =
      const VerificationMeta('cokiSwimming7b6a39bc7b3edf2290dcea74');
  @override
  late final GeneratedColumn<String> cokiSwimming7b6a39bc7b3edf2290dcea74 =
      GeneratedColumn<String>(
        'coki_swimming7b6a39bc7b3edf2290dcea74',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _cokiSwimming9af26f21c2b33Meta =
      const VerificationMeta('cokiSwimming9af26f21c2b33');
  @override
  late final GeneratedColumn<String> cokiSwimming9af26f21c2b33 =
      GeneratedColumn<String>(
        'coki_swimming9af26f21c2b33',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _cokiSwimmingE070b66af5a82465Meta =
      const VerificationMeta('cokiSwimmingE070b66af5a82465');
  @override
  late final GeneratedColumn<String> cokiSwimmingE070b66af5a82465 =
      GeneratedColumn<String>(
        'coki_swimming_e070b66af5a82465',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _cokiSwimming514b073dd6131a57e6977ba2Meta =
      const VerificationMeta('cokiSwimming514b073dd6131a57e6977ba2');
  @override
  late final GeneratedColumn<DateTime> cokiSwimming514b073dd6131a57e6977ba2 =
      GeneratedColumn<DateTime>(
        'coki_swimming514b073dd6131a57e6977ba2',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _cokiSwimming33d2f31d45bcd84135Meta =
      const VerificationMeta('cokiSwimming33d2f31d45bcd84135');
  @override
  late final GeneratedColumn<DateTime> cokiSwimming33d2f31d45bcd84135 =
      GeneratedColumn<DateTime>(
        'coki_swimming33d2f31d45bcd84135',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    cokiSwimmingCe270c0c89ce45814c97b26d,
    cokiSwimming374c2d33d71555c,
    cokiSwimming7b6a39bc7b3edf2290dcea74,
    cokiSwimming9af26f21c2b33,
    cokiSwimmingE070b66af5a82465,
    cokiSwimming514b073dd6131a57e6977ba2,
    cokiSwimming33d2f31d45bcd84135,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'coki_swimming73e845eb8995e10d78699';
  @override
  VerificationContext validateIntegrity(
    Insertable<CokiSwimming73e845eb8995e10d78699Data> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('coki_swimming_ce270c0c89ce45814c97b26d')) {
      context.handle(
        _cokiSwimmingCe270c0c89ce45814c97b26dMeta,
        cokiSwimmingCe270c0c89ce45814c97b26d.isAcceptableOrUnknown(
          data['coki_swimming_ce270c0c89ce45814c97b26d']!,
          _cokiSwimmingCe270c0c89ce45814c97b26dMeta,
        ),
      );
    }
    if (data.containsKey('coki_swimming374c2d33d71555c')) {
      context.handle(
        _cokiSwimming374c2d33d71555cMeta,
        cokiSwimming374c2d33d71555c.isAcceptableOrUnknown(
          data['coki_swimming374c2d33d71555c']!,
          _cokiSwimming374c2d33d71555cMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cokiSwimming374c2d33d71555cMeta);
    }
    if (data.containsKey('coki_swimming7b6a39bc7b3edf2290dcea74')) {
      context.handle(
        _cokiSwimming7b6a39bc7b3edf2290dcea74Meta,
        cokiSwimming7b6a39bc7b3edf2290dcea74.isAcceptableOrUnknown(
          data['coki_swimming7b6a39bc7b3edf2290dcea74']!,
          _cokiSwimming7b6a39bc7b3edf2290dcea74Meta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cokiSwimming7b6a39bc7b3edf2290dcea74Meta);
    }
    if (data.containsKey('coki_swimming9af26f21c2b33')) {
      context.handle(
        _cokiSwimming9af26f21c2b33Meta,
        cokiSwimming9af26f21c2b33.isAcceptableOrUnknown(
          data['coki_swimming9af26f21c2b33']!,
          _cokiSwimming9af26f21c2b33Meta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cokiSwimming9af26f21c2b33Meta);
    }
    if (data.containsKey('coki_swimming_e070b66af5a82465')) {
      context.handle(
        _cokiSwimmingE070b66af5a82465Meta,
        cokiSwimmingE070b66af5a82465.isAcceptableOrUnknown(
          data['coki_swimming_e070b66af5a82465']!,
          _cokiSwimmingE070b66af5a82465Meta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cokiSwimmingE070b66af5a82465Meta);
    }
    if (data.containsKey('coki_swimming514b073dd6131a57e6977ba2')) {
      context.handle(
        _cokiSwimming514b073dd6131a57e6977ba2Meta,
        cokiSwimming514b073dd6131a57e6977ba2.isAcceptableOrUnknown(
          data['coki_swimming514b073dd6131a57e6977ba2']!,
          _cokiSwimming514b073dd6131a57e6977ba2Meta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cokiSwimming514b073dd6131a57e6977ba2Meta);
    }
    if (data.containsKey('coki_swimming33d2f31d45bcd84135')) {
      context.handle(
        _cokiSwimming33d2f31d45bcd84135Meta,
        cokiSwimming33d2f31d45bcd84135.isAcceptableOrUnknown(
          data['coki_swimming33d2f31d45bcd84135']!,
          _cokiSwimming33d2f31d45bcd84135Meta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cokiSwimming33d2f31d45bcd84135Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {
    cokiSwimmingCe270c0c89ce45814c97b26d,
  };
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {
      cokiSwimming374c2d33d71555c,
      cokiSwimming7b6a39bc7b3edf2290dcea74,
      cokiSwimming9af26f21c2b33,
    },
  ];
  @override
  CokiSwimming73e845eb8995e10d78699Data map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CokiSwimming73e845eb8995e10d78699Data(
      cokiSwimmingCe270c0c89ce45814c97b26d: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}coki_swimming_ce270c0c89ce45814c97b26d'],
      )!,
      cokiSwimming374c2d33d71555c: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}coki_swimming374c2d33d71555c'],
      )!,
      cokiSwimming7b6a39bc7b3edf2290dcea74: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}coki_swimming7b6a39bc7b3edf2290dcea74'],
      )!,
      cokiSwimming9af26f21c2b33: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}coki_swimming9af26f21c2b33'],
      )!,
      cokiSwimmingE070b66af5a82465: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}coki_swimming_e070b66af5a82465'],
      )!,
      cokiSwimming514b073dd6131a57e6977ba2: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}coki_swimming514b073dd6131a57e6977ba2'],
      )!,
      cokiSwimming33d2f31d45bcd84135: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}coki_swimming33d2f31d45bcd84135'],
      )!,
    );
  }

  @override
  $CokiSwimming73e845eb8995e10d78699Table createAlias(String alias) {
    return $CokiSwimming73e845eb8995e10d78699Table(attachedDatabase, alias);
  }
}

class CokiSwimming73e845eb8995e10d78699Data extends DataClass
    implements Insertable<CokiSwimming73e845eb8995e10d78699Data> {
  final int cokiSwimmingCe270c0c89ce45814c97b26d;
  final int cokiSwimming374c2d33d71555c;
  final String cokiSwimming7b6a39bc7b3edf2290dcea74;
  final String cokiSwimming9af26f21c2b33;
  final String cokiSwimmingE070b66af5a82465;
  final DateTime cokiSwimming514b073dd6131a57e6977ba2;
  final DateTime cokiSwimming33d2f31d45bcd84135;
  const CokiSwimming73e845eb8995e10d78699Data({
    required this.cokiSwimmingCe270c0c89ce45814c97b26d,
    required this.cokiSwimming374c2d33d71555c,
    required this.cokiSwimming7b6a39bc7b3edf2290dcea74,
    required this.cokiSwimming9af26f21c2b33,
    required this.cokiSwimmingE070b66af5a82465,
    required this.cokiSwimming514b073dd6131a57e6977ba2,
    required this.cokiSwimming33d2f31d45bcd84135,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['coki_swimming_ce270c0c89ce45814c97b26d'] = Variable<int>(
      cokiSwimmingCe270c0c89ce45814c97b26d,
    );
    map['coki_swimming374c2d33d71555c'] = Variable<int>(
      cokiSwimming374c2d33d71555c,
    );
    map['coki_swimming7b6a39bc7b3edf2290dcea74'] = Variable<String>(
      cokiSwimming7b6a39bc7b3edf2290dcea74,
    );
    map['coki_swimming9af26f21c2b33'] = Variable<String>(
      cokiSwimming9af26f21c2b33,
    );
    map['coki_swimming_e070b66af5a82465'] = Variable<String>(
      cokiSwimmingE070b66af5a82465,
    );
    map['coki_swimming514b073dd6131a57e6977ba2'] = Variable<DateTime>(
      cokiSwimming514b073dd6131a57e6977ba2,
    );
    map['coki_swimming33d2f31d45bcd84135'] = Variable<DateTime>(
      cokiSwimming33d2f31d45bcd84135,
    );
    return map;
  }

  CokiSwimming73e845eb8995e10d78699Companion toCompanion(bool nullToAbsent) {
    return CokiSwimming73e845eb8995e10d78699Companion(
      cokiSwimmingCe270c0c89ce45814c97b26d: Value(
        cokiSwimmingCe270c0c89ce45814c97b26d,
      ),
      cokiSwimming374c2d33d71555c: Value(cokiSwimming374c2d33d71555c),
      cokiSwimming7b6a39bc7b3edf2290dcea74: Value(
        cokiSwimming7b6a39bc7b3edf2290dcea74,
      ),
      cokiSwimming9af26f21c2b33: Value(cokiSwimming9af26f21c2b33),
      cokiSwimmingE070b66af5a82465: Value(cokiSwimmingE070b66af5a82465),
      cokiSwimming514b073dd6131a57e6977ba2: Value(
        cokiSwimming514b073dd6131a57e6977ba2,
      ),
      cokiSwimming33d2f31d45bcd84135: Value(cokiSwimming33d2f31d45bcd84135),
    );
  }

  factory CokiSwimming73e845eb8995e10d78699Data.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CokiSwimming73e845eb8995e10d78699Data(
      cokiSwimmingCe270c0c89ce45814c97b26d: serializer.fromJson<int>(
        json['cokiSwimmingCe270c0c89ce45814c97b26d'],
      ),
      cokiSwimming374c2d33d71555c: serializer.fromJson<int>(
        json['cokiSwimming374c2d33d71555c'],
      ),
      cokiSwimming7b6a39bc7b3edf2290dcea74: serializer.fromJson<String>(
        json['cokiSwimming7b6a39bc7b3edf2290dcea74'],
      ),
      cokiSwimming9af26f21c2b33: serializer.fromJson<String>(
        json['cokiSwimming9af26f21c2b33'],
      ),
      cokiSwimmingE070b66af5a82465: serializer.fromJson<String>(
        json['cokiSwimmingE070b66af5a82465'],
      ),
      cokiSwimming514b073dd6131a57e6977ba2: serializer.fromJson<DateTime>(
        json['cokiSwimming514b073dd6131a57e6977ba2'],
      ),
      cokiSwimming33d2f31d45bcd84135: serializer.fromJson<DateTime>(
        json['cokiSwimming33d2f31d45bcd84135'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cokiSwimmingCe270c0c89ce45814c97b26d': serializer.toJson<int>(
        cokiSwimmingCe270c0c89ce45814c97b26d,
      ),
      'cokiSwimming374c2d33d71555c': serializer.toJson<int>(
        cokiSwimming374c2d33d71555c,
      ),
      'cokiSwimming7b6a39bc7b3edf2290dcea74': serializer.toJson<String>(
        cokiSwimming7b6a39bc7b3edf2290dcea74,
      ),
      'cokiSwimming9af26f21c2b33': serializer.toJson<String>(
        cokiSwimming9af26f21c2b33,
      ),
      'cokiSwimmingE070b66af5a82465': serializer.toJson<String>(
        cokiSwimmingE070b66af5a82465,
      ),
      'cokiSwimming514b073dd6131a57e6977ba2': serializer.toJson<DateTime>(
        cokiSwimming514b073dd6131a57e6977ba2,
      ),
      'cokiSwimming33d2f31d45bcd84135': serializer.toJson<DateTime>(
        cokiSwimming33d2f31d45bcd84135,
      ),
    };
  }

  CokiSwimming73e845eb8995e10d78699Data copyWith({
    int? cokiSwimmingCe270c0c89ce45814c97b26d,
    int? cokiSwimming374c2d33d71555c,
    String? cokiSwimming7b6a39bc7b3edf2290dcea74,
    String? cokiSwimming9af26f21c2b33,
    String? cokiSwimmingE070b66af5a82465,
    DateTime? cokiSwimming514b073dd6131a57e6977ba2,
    DateTime? cokiSwimming33d2f31d45bcd84135,
  }) => CokiSwimming73e845eb8995e10d78699Data(
    cokiSwimmingCe270c0c89ce45814c97b26d:
        cokiSwimmingCe270c0c89ce45814c97b26d ??
        this.cokiSwimmingCe270c0c89ce45814c97b26d,
    cokiSwimming374c2d33d71555c:
        cokiSwimming374c2d33d71555c ?? this.cokiSwimming374c2d33d71555c,
    cokiSwimming7b6a39bc7b3edf2290dcea74:
        cokiSwimming7b6a39bc7b3edf2290dcea74 ??
        this.cokiSwimming7b6a39bc7b3edf2290dcea74,
    cokiSwimming9af26f21c2b33:
        cokiSwimming9af26f21c2b33 ?? this.cokiSwimming9af26f21c2b33,
    cokiSwimmingE070b66af5a82465:
        cokiSwimmingE070b66af5a82465 ?? this.cokiSwimmingE070b66af5a82465,
    cokiSwimming514b073dd6131a57e6977ba2:
        cokiSwimming514b073dd6131a57e6977ba2 ??
        this.cokiSwimming514b073dd6131a57e6977ba2,
    cokiSwimming33d2f31d45bcd84135:
        cokiSwimming33d2f31d45bcd84135 ?? this.cokiSwimming33d2f31d45bcd84135,
  );
  CokiSwimming73e845eb8995e10d78699Data copyWithCompanion(
    CokiSwimming73e845eb8995e10d78699Companion data,
  ) {
    return CokiSwimming73e845eb8995e10d78699Data(
      cokiSwimmingCe270c0c89ce45814c97b26d:
          data.cokiSwimmingCe270c0c89ce45814c97b26d.present
          ? data.cokiSwimmingCe270c0c89ce45814c97b26d.value
          : this.cokiSwimmingCe270c0c89ce45814c97b26d,
      cokiSwimming374c2d33d71555c: data.cokiSwimming374c2d33d71555c.present
          ? data.cokiSwimming374c2d33d71555c.value
          : this.cokiSwimming374c2d33d71555c,
      cokiSwimming7b6a39bc7b3edf2290dcea74:
          data.cokiSwimming7b6a39bc7b3edf2290dcea74.present
          ? data.cokiSwimming7b6a39bc7b3edf2290dcea74.value
          : this.cokiSwimming7b6a39bc7b3edf2290dcea74,
      cokiSwimming9af26f21c2b33: data.cokiSwimming9af26f21c2b33.present
          ? data.cokiSwimming9af26f21c2b33.value
          : this.cokiSwimming9af26f21c2b33,
      cokiSwimmingE070b66af5a82465: data.cokiSwimmingE070b66af5a82465.present
          ? data.cokiSwimmingE070b66af5a82465.value
          : this.cokiSwimmingE070b66af5a82465,
      cokiSwimming514b073dd6131a57e6977ba2:
          data.cokiSwimming514b073dd6131a57e6977ba2.present
          ? data.cokiSwimming514b073dd6131a57e6977ba2.value
          : this.cokiSwimming514b073dd6131a57e6977ba2,
      cokiSwimming33d2f31d45bcd84135:
          data.cokiSwimming33d2f31d45bcd84135.present
          ? data.cokiSwimming33d2f31d45bcd84135.value
          : this.cokiSwimming33d2f31d45bcd84135,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CokiSwimming73e845eb8995e10d78699Data(')
          ..write(
            'cokiSwimmingCe270c0c89ce45814c97b26d: $cokiSwimmingCe270c0c89ce45814c97b26d, ',
          )
          ..write('cokiSwimming374c2d33d71555c: $cokiSwimming374c2d33d71555c, ')
          ..write(
            'cokiSwimming7b6a39bc7b3edf2290dcea74: $cokiSwimming7b6a39bc7b3edf2290dcea74, ',
          )
          ..write('cokiSwimming9af26f21c2b33: $cokiSwimming9af26f21c2b33, ')
          ..write(
            'cokiSwimmingE070b66af5a82465: $cokiSwimmingE070b66af5a82465, ',
          )
          ..write(
            'cokiSwimming514b073dd6131a57e6977ba2: $cokiSwimming514b073dd6131a57e6977ba2, ',
          )
          ..write(
            'cokiSwimming33d2f31d45bcd84135: $cokiSwimming33d2f31d45bcd84135',
          )
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    cokiSwimmingCe270c0c89ce45814c97b26d,
    cokiSwimming374c2d33d71555c,
    cokiSwimming7b6a39bc7b3edf2290dcea74,
    cokiSwimming9af26f21c2b33,
    cokiSwimmingE070b66af5a82465,
    cokiSwimming514b073dd6131a57e6977ba2,
    cokiSwimming33d2f31d45bcd84135,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CokiSwimming73e845eb8995e10d78699Data &&
          other.cokiSwimmingCe270c0c89ce45814c97b26d ==
              this.cokiSwimmingCe270c0c89ce45814c97b26d &&
          other.cokiSwimming374c2d33d71555c ==
              this.cokiSwimming374c2d33d71555c &&
          other.cokiSwimming7b6a39bc7b3edf2290dcea74 ==
              this.cokiSwimming7b6a39bc7b3edf2290dcea74 &&
          other.cokiSwimming9af26f21c2b33 == this.cokiSwimming9af26f21c2b33 &&
          other.cokiSwimmingE070b66af5a82465 ==
              this.cokiSwimmingE070b66af5a82465 &&
          other.cokiSwimming514b073dd6131a57e6977ba2 ==
              this.cokiSwimming514b073dd6131a57e6977ba2 &&
          other.cokiSwimming33d2f31d45bcd84135 ==
              this.cokiSwimming33d2f31d45bcd84135);
}

class CokiSwimming73e845eb8995e10d78699Companion
    extends UpdateCompanion<CokiSwimming73e845eb8995e10d78699Data> {
  final Value<int> cokiSwimmingCe270c0c89ce45814c97b26d;
  final Value<int> cokiSwimming374c2d33d71555c;
  final Value<String> cokiSwimming7b6a39bc7b3edf2290dcea74;
  final Value<String> cokiSwimming9af26f21c2b33;
  final Value<String> cokiSwimmingE070b66af5a82465;
  final Value<DateTime> cokiSwimming514b073dd6131a57e6977ba2;
  final Value<DateTime> cokiSwimming33d2f31d45bcd84135;
  const CokiSwimming73e845eb8995e10d78699Companion({
    this.cokiSwimmingCe270c0c89ce45814c97b26d = const Value.absent(),
    this.cokiSwimming374c2d33d71555c = const Value.absent(),
    this.cokiSwimming7b6a39bc7b3edf2290dcea74 = const Value.absent(),
    this.cokiSwimming9af26f21c2b33 = const Value.absent(),
    this.cokiSwimmingE070b66af5a82465 = const Value.absent(),
    this.cokiSwimming514b073dd6131a57e6977ba2 = const Value.absent(),
    this.cokiSwimming33d2f31d45bcd84135 = const Value.absent(),
  });
  CokiSwimming73e845eb8995e10d78699Companion.insert({
    this.cokiSwimmingCe270c0c89ce45814c97b26d = const Value.absent(),
    required int cokiSwimming374c2d33d71555c,
    required String cokiSwimming7b6a39bc7b3edf2290dcea74,
    required String cokiSwimming9af26f21c2b33,
    required String cokiSwimmingE070b66af5a82465,
    required DateTime cokiSwimming514b073dd6131a57e6977ba2,
    required DateTime cokiSwimming33d2f31d45bcd84135,
  }) : cokiSwimming374c2d33d71555c = Value(cokiSwimming374c2d33d71555c),
       cokiSwimming7b6a39bc7b3edf2290dcea74 = Value(
         cokiSwimming7b6a39bc7b3edf2290dcea74,
       ),
       cokiSwimming9af26f21c2b33 = Value(cokiSwimming9af26f21c2b33),
       cokiSwimmingE070b66af5a82465 = Value(cokiSwimmingE070b66af5a82465),
       cokiSwimming514b073dd6131a57e6977ba2 = Value(
         cokiSwimming514b073dd6131a57e6977ba2,
       ),
       cokiSwimming33d2f31d45bcd84135 = Value(cokiSwimming33d2f31d45bcd84135);
  static Insertable<CokiSwimming73e845eb8995e10d78699Data> custom({
    Expression<int>? cokiSwimmingCe270c0c89ce45814c97b26d,
    Expression<int>? cokiSwimming374c2d33d71555c,
    Expression<String>? cokiSwimming7b6a39bc7b3edf2290dcea74,
    Expression<String>? cokiSwimming9af26f21c2b33,
    Expression<String>? cokiSwimmingE070b66af5a82465,
    Expression<DateTime>? cokiSwimming514b073dd6131a57e6977ba2,
    Expression<DateTime>? cokiSwimming33d2f31d45bcd84135,
  }) {
    return RawValuesInsertable({
      if (cokiSwimmingCe270c0c89ce45814c97b26d != null)
        'coki_swimming_ce270c0c89ce45814c97b26d':
            cokiSwimmingCe270c0c89ce45814c97b26d,
      if (cokiSwimming374c2d33d71555c != null)
        'coki_swimming374c2d33d71555c': cokiSwimming374c2d33d71555c,
      if (cokiSwimming7b6a39bc7b3edf2290dcea74 != null)
        'coki_swimming7b6a39bc7b3edf2290dcea74':
            cokiSwimming7b6a39bc7b3edf2290dcea74,
      if (cokiSwimming9af26f21c2b33 != null)
        'coki_swimming9af26f21c2b33': cokiSwimming9af26f21c2b33,
      if (cokiSwimmingE070b66af5a82465 != null)
        'coki_swimming_e070b66af5a82465': cokiSwimmingE070b66af5a82465,
      if (cokiSwimming514b073dd6131a57e6977ba2 != null)
        'coki_swimming514b073dd6131a57e6977ba2':
            cokiSwimming514b073dd6131a57e6977ba2,
      if (cokiSwimming33d2f31d45bcd84135 != null)
        'coki_swimming33d2f31d45bcd84135': cokiSwimming33d2f31d45bcd84135,
    });
  }

  CokiSwimming73e845eb8995e10d78699Companion copyWith({
    Value<int>? cokiSwimmingCe270c0c89ce45814c97b26d,
    Value<int>? cokiSwimming374c2d33d71555c,
    Value<String>? cokiSwimming7b6a39bc7b3edf2290dcea74,
    Value<String>? cokiSwimming9af26f21c2b33,
    Value<String>? cokiSwimmingE070b66af5a82465,
    Value<DateTime>? cokiSwimming514b073dd6131a57e6977ba2,
    Value<DateTime>? cokiSwimming33d2f31d45bcd84135,
  }) {
    return CokiSwimming73e845eb8995e10d78699Companion(
      cokiSwimmingCe270c0c89ce45814c97b26d:
          cokiSwimmingCe270c0c89ce45814c97b26d ??
          this.cokiSwimmingCe270c0c89ce45814c97b26d,
      cokiSwimming374c2d33d71555c:
          cokiSwimming374c2d33d71555c ?? this.cokiSwimming374c2d33d71555c,
      cokiSwimming7b6a39bc7b3edf2290dcea74:
          cokiSwimming7b6a39bc7b3edf2290dcea74 ??
          this.cokiSwimming7b6a39bc7b3edf2290dcea74,
      cokiSwimming9af26f21c2b33:
          cokiSwimming9af26f21c2b33 ?? this.cokiSwimming9af26f21c2b33,
      cokiSwimmingE070b66af5a82465:
          cokiSwimmingE070b66af5a82465 ?? this.cokiSwimmingE070b66af5a82465,
      cokiSwimming514b073dd6131a57e6977ba2:
          cokiSwimming514b073dd6131a57e6977ba2 ??
          this.cokiSwimming514b073dd6131a57e6977ba2,
      cokiSwimming33d2f31d45bcd84135:
          cokiSwimming33d2f31d45bcd84135 ?? this.cokiSwimming33d2f31d45bcd84135,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cokiSwimmingCe270c0c89ce45814c97b26d.present) {
      map['coki_swimming_ce270c0c89ce45814c97b26d'] = Variable<int>(
        cokiSwimmingCe270c0c89ce45814c97b26d.value,
      );
    }
    if (cokiSwimming374c2d33d71555c.present) {
      map['coki_swimming374c2d33d71555c'] = Variable<int>(
        cokiSwimming374c2d33d71555c.value,
      );
    }
    if (cokiSwimming7b6a39bc7b3edf2290dcea74.present) {
      map['coki_swimming7b6a39bc7b3edf2290dcea74'] = Variable<String>(
        cokiSwimming7b6a39bc7b3edf2290dcea74.value,
      );
    }
    if (cokiSwimming9af26f21c2b33.present) {
      map['coki_swimming9af26f21c2b33'] = Variable<String>(
        cokiSwimming9af26f21c2b33.value,
      );
    }
    if (cokiSwimmingE070b66af5a82465.present) {
      map['coki_swimming_e070b66af5a82465'] = Variable<String>(
        cokiSwimmingE070b66af5a82465.value,
      );
    }
    if (cokiSwimming514b073dd6131a57e6977ba2.present) {
      map['coki_swimming514b073dd6131a57e6977ba2'] = Variable<DateTime>(
        cokiSwimming514b073dd6131a57e6977ba2.value,
      );
    }
    if (cokiSwimming33d2f31d45bcd84135.present) {
      map['coki_swimming33d2f31d45bcd84135'] = Variable<DateTime>(
        cokiSwimming33d2f31d45bcd84135.value,
      );
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CokiSwimming73e845eb8995e10d78699Companion(')
          ..write(
            'cokiSwimmingCe270c0c89ce45814c97b26d: $cokiSwimmingCe270c0c89ce45814c97b26d, ',
          )
          ..write('cokiSwimming374c2d33d71555c: $cokiSwimming374c2d33d71555c, ')
          ..write(
            'cokiSwimming7b6a39bc7b3edf2290dcea74: $cokiSwimming7b6a39bc7b3edf2290dcea74, ',
          )
          ..write('cokiSwimming9af26f21c2b33: $cokiSwimming9af26f21c2b33, ')
          ..write(
            'cokiSwimmingE070b66af5a82465: $cokiSwimmingE070b66af5a82465, ',
          )
          ..write(
            'cokiSwimming514b073dd6131a57e6977ba2: $cokiSwimming514b073dd6131a57e6977ba2, ',
          )
          ..write(
            'cokiSwimming33d2f31d45bcd84135: $cokiSwimming33d2f31d45bcd84135',
          )
          ..write(')'))
        .toString();
  }
}

abstract class _$CokiSwimmingDatabase extends GeneratedDatabase {
  _$CokiSwimmingDatabase(QueryExecutor e) : super(e);
  $CokiSwimmingDatabaseManager get managers =>
      $CokiSwimmingDatabaseManager(this);
  late final $CokiSwimmingMembersTable cokiSwimmingMembers =
      $CokiSwimmingMembersTable(this);
  late final $CokiSwimmingGuideLinesTable cokiSwimmingGuideLines =
      $CokiSwimmingGuideLinesTable(this);
  late final $CokiSwimmingStoreReceiptsTable cokiSwimmingStoreReceipts =
      $CokiSwimmingStoreReceiptsTable(this);
  late final $CokiSwimming73e845eb8995e10d78699Table
  cokiSwimming73e845eb8995e10d78699 = $CokiSwimming73e845eb8995e10d78699Table(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cokiSwimmingMembers,
    cokiSwimmingGuideLines,
    cokiSwimmingStoreReceipts,
    cokiSwimming73e845eb8995e10d78699,
  ];
}

typedef $$CokiSwimmingMembersTableCreateCompanionBuilder =
    CokiSwimmingMembersCompanion Function({
      Value<int> id,
      required String email,
      required String passwordDigest,
      required String passwordSalt,
      Value<String?> displayName,
      Value<String?> avatarPath,
      Value<String?> biography,
      Value<int> coinBalance,
      Value<bool> profileCompleted,
      required DateTime createdAt,
      required DateTime updatedAt,
    });
typedef $$CokiSwimmingMembersTableUpdateCompanionBuilder =
    CokiSwimmingMembersCompanion Function({
      Value<int> id,
      Value<String> email,
      Value<String> passwordDigest,
      Value<String> passwordSalt,
      Value<String?> displayName,
      Value<String?> avatarPath,
      Value<String?> biography,
      Value<int> coinBalance,
      Value<bool> profileCompleted,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
    });

class $$CokiSwimmingMembersTableFilterComposer
    extends Composer<_$CokiSwimmingDatabase, $CokiSwimmingMembersTable> {
  $$CokiSwimmingMembersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get passwordDigest => $composableBuilder(
    column: $table.passwordDigest,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get passwordSalt => $composableBuilder(
    column: $table.passwordSalt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarPath => $composableBuilder(
    column: $table.avatarPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get biography => $composableBuilder(
    column: $table.biography,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get coinBalance => $composableBuilder(
    column: $table.coinBalance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get profileCompleted => $composableBuilder(
    column: $table.profileCompleted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CokiSwimmingMembersTableOrderingComposer
    extends Composer<_$CokiSwimmingDatabase, $CokiSwimmingMembersTable> {
  $$CokiSwimmingMembersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get passwordDigest => $composableBuilder(
    column: $table.passwordDigest,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get passwordSalt => $composableBuilder(
    column: $table.passwordSalt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarPath => $composableBuilder(
    column: $table.avatarPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get biography => $composableBuilder(
    column: $table.biography,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get coinBalance => $composableBuilder(
    column: $table.coinBalance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get profileCompleted => $composableBuilder(
    column: $table.profileCompleted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CokiSwimmingMembersTableAnnotationComposer
    extends Composer<_$CokiSwimmingDatabase, $CokiSwimmingMembersTable> {
  $$CokiSwimmingMembersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get passwordDigest => $composableBuilder(
    column: $table.passwordDigest,
    builder: (column) => column,
  );

  GeneratedColumn<String> get passwordSalt => $composableBuilder(
    column: $table.passwordSalt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get avatarPath => $composableBuilder(
    column: $table.avatarPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get biography =>
      $composableBuilder(column: $table.biography, builder: (column) => column);

  GeneratedColumn<int> get coinBalance => $composableBuilder(
    column: $table.coinBalance,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get profileCompleted => $composableBuilder(
    column: $table.profileCompleted,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CokiSwimmingMembersTableTableManager
    extends
        RootTableManager<
          _$CokiSwimmingDatabase,
          $CokiSwimmingMembersTable,
          CokiSwimmingMember,
          $$CokiSwimmingMembersTableFilterComposer,
          $$CokiSwimmingMembersTableOrderingComposer,
          $$CokiSwimmingMembersTableAnnotationComposer,
          $$CokiSwimmingMembersTableCreateCompanionBuilder,
          $$CokiSwimmingMembersTableUpdateCompanionBuilder,
          (
            CokiSwimmingMember,
            BaseReferences<
              _$CokiSwimmingDatabase,
              $CokiSwimmingMembersTable,
              CokiSwimmingMember
            >,
          ),
          CokiSwimmingMember,
          PrefetchHooks Function()
        > {
  $$CokiSwimmingMembersTableTableManager(
    _$CokiSwimmingDatabase db,
    $CokiSwimmingMembersTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CokiSwimmingMembersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CokiSwimmingMembersTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CokiSwimmingMembersTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> passwordDigest = const Value.absent(),
                Value<String> passwordSalt = const Value.absent(),
                Value<String?> displayName = const Value.absent(),
                Value<String?> avatarPath = const Value.absent(),
                Value<String?> biography = const Value.absent(),
                Value<int> coinBalance = const Value.absent(),
                Value<bool> profileCompleted = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => CokiSwimmingMembersCompanion(
                id: id,
                email: email,
                passwordDigest: passwordDigest,
                passwordSalt: passwordSalt,
                displayName: displayName,
                avatarPath: avatarPath,
                biography: biography,
                coinBalance: coinBalance,
                profileCompleted: profileCompleted,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String email,
                required String passwordDigest,
                required String passwordSalt,
                Value<String?> displayName = const Value.absent(),
                Value<String?> avatarPath = const Value.absent(),
                Value<String?> biography = const Value.absent(),
                Value<int> coinBalance = const Value.absent(),
                Value<bool> profileCompleted = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
              }) => CokiSwimmingMembersCompanion.insert(
                id: id,
                email: email,
                passwordDigest: passwordDigest,
                passwordSalt: passwordSalt,
                displayName: displayName,
                avatarPath: avatarPath,
                biography: biography,
                coinBalance: coinBalance,
                profileCompleted: profileCompleted,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CokiSwimmingMembersTableProcessedTableManager =
    ProcessedTableManager<
      _$CokiSwimmingDatabase,
      $CokiSwimmingMembersTable,
      CokiSwimmingMember,
      $$CokiSwimmingMembersTableFilterComposer,
      $$CokiSwimmingMembersTableOrderingComposer,
      $$CokiSwimmingMembersTableAnnotationComposer,
      $$CokiSwimmingMembersTableCreateCompanionBuilder,
      $$CokiSwimmingMembersTableUpdateCompanionBuilder,
      (
        CokiSwimmingMember,
        BaseReferences<
          _$CokiSwimmingDatabase,
          $CokiSwimmingMembersTable,
          CokiSwimmingMember
        >,
      ),
      CokiSwimmingMember,
      PrefetchHooks Function()
    >;
typedef $$CokiSwimmingGuideLinesTableCreateCompanionBuilder =
    CokiSwimmingGuideLinesCompanion Function({
      Value<int> id,
      required int memberId,
      required String content,
      required bool fromGuide,
      required DateTime createdAt,
    });
typedef $$CokiSwimmingGuideLinesTableUpdateCompanionBuilder =
    CokiSwimmingGuideLinesCompanion Function({
      Value<int> id,
      Value<int> memberId,
      Value<String> content,
      Value<bool> fromGuide,
      Value<DateTime> createdAt,
    });

class $$CokiSwimmingGuideLinesTableFilterComposer
    extends Composer<_$CokiSwimmingDatabase, $CokiSwimmingGuideLinesTable> {
  $$CokiSwimmingGuideLinesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get memberId => $composableBuilder(
    column: $table.memberId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get fromGuide => $composableBuilder(
    column: $table.fromGuide,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CokiSwimmingGuideLinesTableOrderingComposer
    extends Composer<_$CokiSwimmingDatabase, $CokiSwimmingGuideLinesTable> {
  $$CokiSwimmingGuideLinesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get memberId => $composableBuilder(
    column: $table.memberId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get fromGuide => $composableBuilder(
    column: $table.fromGuide,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CokiSwimmingGuideLinesTableAnnotationComposer
    extends Composer<_$CokiSwimmingDatabase, $CokiSwimmingGuideLinesTable> {
  $$CokiSwimmingGuideLinesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get memberId =>
      $composableBuilder(column: $table.memberId, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<bool> get fromGuide =>
      $composableBuilder(column: $table.fromGuide, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$CokiSwimmingGuideLinesTableTableManager
    extends
        RootTableManager<
          _$CokiSwimmingDatabase,
          $CokiSwimmingGuideLinesTable,
          CokiSwimmingGuideLine,
          $$CokiSwimmingGuideLinesTableFilterComposer,
          $$CokiSwimmingGuideLinesTableOrderingComposer,
          $$CokiSwimmingGuideLinesTableAnnotationComposer,
          $$CokiSwimmingGuideLinesTableCreateCompanionBuilder,
          $$CokiSwimmingGuideLinesTableUpdateCompanionBuilder,
          (
            CokiSwimmingGuideLine,
            BaseReferences<
              _$CokiSwimmingDatabase,
              $CokiSwimmingGuideLinesTable,
              CokiSwimmingGuideLine
            >,
          ),
          CokiSwimmingGuideLine,
          PrefetchHooks Function()
        > {
  $$CokiSwimmingGuideLinesTableTableManager(
    _$CokiSwimmingDatabase db,
    $CokiSwimmingGuideLinesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CokiSwimmingGuideLinesTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$CokiSwimmingGuideLinesTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CokiSwimmingGuideLinesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> memberId = const Value.absent(),
                Value<String> content = const Value.absent(),
                Value<bool> fromGuide = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => CokiSwimmingGuideLinesCompanion(
                id: id,
                memberId: memberId,
                content: content,
                fromGuide: fromGuide,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int memberId,
                required String content,
                required bool fromGuide,
                required DateTime createdAt,
              }) => CokiSwimmingGuideLinesCompanion.insert(
                id: id,
                memberId: memberId,
                content: content,
                fromGuide: fromGuide,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CokiSwimmingGuideLinesTableProcessedTableManager =
    ProcessedTableManager<
      _$CokiSwimmingDatabase,
      $CokiSwimmingGuideLinesTable,
      CokiSwimmingGuideLine,
      $$CokiSwimmingGuideLinesTableFilterComposer,
      $$CokiSwimmingGuideLinesTableOrderingComposer,
      $$CokiSwimmingGuideLinesTableAnnotationComposer,
      $$CokiSwimmingGuideLinesTableCreateCompanionBuilder,
      $$CokiSwimmingGuideLinesTableUpdateCompanionBuilder,
      (
        CokiSwimmingGuideLine,
        BaseReferences<
          _$CokiSwimmingDatabase,
          $CokiSwimmingGuideLinesTable,
          CokiSwimmingGuideLine
        >,
      ),
      CokiSwimmingGuideLine,
      PrefetchHooks Function()
    >;
typedef $$CokiSwimmingStoreReceiptsTableCreateCompanionBuilder =
    CokiSwimmingStoreReceiptsCompanion Function({
      required String transactionKey,
      required int memberId,
      required String productId,
      required int quantity,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$CokiSwimmingStoreReceiptsTableUpdateCompanionBuilder =
    CokiSwimmingStoreReceiptsCompanion Function({
      Value<String> transactionKey,
      Value<int> memberId,
      Value<String> productId,
      Value<int> quantity,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$CokiSwimmingStoreReceiptsTableFilterComposer
    extends Composer<_$CokiSwimmingDatabase, $CokiSwimmingStoreReceiptsTable> {
  $$CokiSwimmingStoreReceiptsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get transactionKey => $composableBuilder(
    column: $table.transactionKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get memberId => $composableBuilder(
    column: $table.memberId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CokiSwimmingStoreReceiptsTableOrderingComposer
    extends Composer<_$CokiSwimmingDatabase, $CokiSwimmingStoreReceiptsTable> {
  $$CokiSwimmingStoreReceiptsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get transactionKey => $composableBuilder(
    column: $table.transactionKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get memberId => $composableBuilder(
    column: $table.memberId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CokiSwimmingStoreReceiptsTableAnnotationComposer
    extends Composer<_$CokiSwimmingDatabase, $CokiSwimmingStoreReceiptsTable> {
  $$CokiSwimmingStoreReceiptsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get transactionKey => $composableBuilder(
    column: $table.transactionKey,
    builder: (column) => column,
  );

  GeneratedColumn<int> get memberId =>
      $composableBuilder(column: $table.memberId, builder: (column) => column);

  GeneratedColumn<String> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$CokiSwimmingStoreReceiptsTableTableManager
    extends
        RootTableManager<
          _$CokiSwimmingDatabase,
          $CokiSwimmingStoreReceiptsTable,
          CokiSwimmingStoreReceipt,
          $$CokiSwimmingStoreReceiptsTableFilterComposer,
          $$CokiSwimmingStoreReceiptsTableOrderingComposer,
          $$CokiSwimmingStoreReceiptsTableAnnotationComposer,
          $$CokiSwimmingStoreReceiptsTableCreateCompanionBuilder,
          $$CokiSwimmingStoreReceiptsTableUpdateCompanionBuilder,
          (
            CokiSwimmingStoreReceipt,
            BaseReferences<
              _$CokiSwimmingDatabase,
              $CokiSwimmingStoreReceiptsTable,
              CokiSwimmingStoreReceipt
            >,
          ),
          CokiSwimmingStoreReceipt,
          PrefetchHooks Function()
        > {
  $$CokiSwimmingStoreReceiptsTableTableManager(
    _$CokiSwimmingDatabase db,
    $CokiSwimmingStoreReceiptsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CokiSwimmingStoreReceiptsTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$CokiSwimmingStoreReceiptsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CokiSwimmingStoreReceiptsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> transactionKey = const Value.absent(),
                Value<int> memberId = const Value.absent(),
                Value<String> productId = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CokiSwimmingStoreReceiptsCompanion(
                transactionKey: transactionKey,
                memberId: memberId,
                productId: productId,
                quantity: quantity,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String transactionKey,
                required int memberId,
                required String productId,
                required int quantity,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => CokiSwimmingStoreReceiptsCompanion.insert(
                transactionKey: transactionKey,
                memberId: memberId,
                productId: productId,
                quantity: quantity,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CokiSwimmingStoreReceiptsTableProcessedTableManager =
    ProcessedTableManager<
      _$CokiSwimmingDatabase,
      $CokiSwimmingStoreReceiptsTable,
      CokiSwimmingStoreReceipt,
      $$CokiSwimmingStoreReceiptsTableFilterComposer,
      $$CokiSwimmingStoreReceiptsTableOrderingComposer,
      $$CokiSwimmingStoreReceiptsTableAnnotationComposer,
      $$CokiSwimmingStoreReceiptsTableCreateCompanionBuilder,
      $$CokiSwimmingStoreReceiptsTableUpdateCompanionBuilder,
      (
        CokiSwimmingStoreReceipt,
        BaseReferences<
          _$CokiSwimmingDatabase,
          $CokiSwimmingStoreReceiptsTable,
          CokiSwimmingStoreReceipt
        >,
      ),
      CokiSwimmingStoreReceipt,
      PrefetchHooks Function()
    >;
typedef $$CokiSwimming73e845eb8995e10d78699TableCreateCompanionBuilder =
    CokiSwimming73e845eb8995e10d78699Companion Function({
      Value<int> cokiSwimmingCe270c0c89ce45814c97b26d,
      required int cokiSwimming374c2d33d71555c,
      required String cokiSwimming7b6a39bc7b3edf2290dcea74,
      required String cokiSwimming9af26f21c2b33,
      required String cokiSwimmingE070b66af5a82465,
      required DateTime cokiSwimming514b073dd6131a57e6977ba2,
      required DateTime cokiSwimming33d2f31d45bcd84135,
    });
typedef $$CokiSwimming73e845eb8995e10d78699TableUpdateCompanionBuilder =
    CokiSwimming73e845eb8995e10d78699Companion Function({
      Value<int> cokiSwimmingCe270c0c89ce45814c97b26d,
      Value<int> cokiSwimming374c2d33d71555c,
      Value<String> cokiSwimming7b6a39bc7b3edf2290dcea74,
      Value<String> cokiSwimming9af26f21c2b33,
      Value<String> cokiSwimmingE070b66af5a82465,
      Value<DateTime> cokiSwimming514b073dd6131a57e6977ba2,
      Value<DateTime> cokiSwimming33d2f31d45bcd84135,
    });

class $$CokiSwimming73e845eb8995e10d78699TableFilterComposer
    extends
        Composer<
          _$CokiSwimmingDatabase,
          $CokiSwimming73e845eb8995e10d78699Table
        > {
  $$CokiSwimming73e845eb8995e10d78699TableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get cokiSwimmingCe270c0c89ce45814c97b26d =>
      $composableBuilder(
        column: $table.cokiSwimmingCe270c0c89ce45814c97b26d,
        builder: (column) => ColumnFilters(column),
      );

  ColumnFilters<int> get cokiSwimming374c2d33d71555c => $composableBuilder(
    column: $table.cokiSwimming374c2d33d71555c,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cokiSwimming7b6a39bc7b3edf2290dcea74 =>
      $composableBuilder(
        column: $table.cokiSwimming7b6a39bc7b3edf2290dcea74,
        builder: (column) => ColumnFilters(column),
      );

  ColumnFilters<String> get cokiSwimming9af26f21c2b33 => $composableBuilder(
    column: $table.cokiSwimming9af26f21c2b33,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cokiSwimmingE070b66af5a82465 => $composableBuilder(
    column: $table.cokiSwimmingE070b66af5a82465,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cokiSwimming514b073dd6131a57e6977ba2 =>
      $composableBuilder(
        column: $table.cokiSwimming514b073dd6131a57e6977ba2,
        builder: (column) => ColumnFilters(column),
      );

  ColumnFilters<DateTime> get cokiSwimming33d2f31d45bcd84135 =>
      $composableBuilder(
        column: $table.cokiSwimming33d2f31d45bcd84135,
        builder: (column) => ColumnFilters(column),
      );
}

class $$CokiSwimming73e845eb8995e10d78699TableOrderingComposer
    extends
        Composer<
          _$CokiSwimmingDatabase,
          $CokiSwimming73e845eb8995e10d78699Table
        > {
  $$CokiSwimming73e845eb8995e10d78699TableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get cokiSwimmingCe270c0c89ce45814c97b26d =>
      $composableBuilder(
        column: $table.cokiSwimmingCe270c0c89ce45814c97b26d,
        builder: (column) => ColumnOrderings(column),
      );

  ColumnOrderings<int> get cokiSwimming374c2d33d71555c => $composableBuilder(
    column: $table.cokiSwimming374c2d33d71555c,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cokiSwimming7b6a39bc7b3edf2290dcea74 =>
      $composableBuilder(
        column: $table.cokiSwimming7b6a39bc7b3edf2290dcea74,
        builder: (column) => ColumnOrderings(column),
      );

  ColumnOrderings<String> get cokiSwimming9af26f21c2b33 => $composableBuilder(
    column: $table.cokiSwimming9af26f21c2b33,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cokiSwimmingE070b66af5a82465 =>
      $composableBuilder(
        column: $table.cokiSwimmingE070b66af5a82465,
        builder: (column) => ColumnOrderings(column),
      );

  ColumnOrderings<DateTime> get cokiSwimming514b073dd6131a57e6977ba2 =>
      $composableBuilder(
        column: $table.cokiSwimming514b073dd6131a57e6977ba2,
        builder: (column) => ColumnOrderings(column),
      );

  ColumnOrderings<DateTime> get cokiSwimming33d2f31d45bcd84135 =>
      $composableBuilder(
        column: $table.cokiSwimming33d2f31d45bcd84135,
        builder: (column) => ColumnOrderings(column),
      );
}

class $$CokiSwimming73e845eb8995e10d78699TableAnnotationComposer
    extends
        Composer<
          _$CokiSwimmingDatabase,
          $CokiSwimming73e845eb8995e10d78699Table
        > {
  $$CokiSwimming73e845eb8995e10d78699TableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get cokiSwimmingCe270c0c89ce45814c97b26d =>
      $composableBuilder(
        column: $table.cokiSwimmingCe270c0c89ce45814c97b26d,
        builder: (column) => column,
      );

  GeneratedColumn<int> get cokiSwimming374c2d33d71555c => $composableBuilder(
    column: $table.cokiSwimming374c2d33d71555c,
    builder: (column) => column,
  );

  GeneratedColumn<String> get cokiSwimming7b6a39bc7b3edf2290dcea74 =>
      $composableBuilder(
        column: $table.cokiSwimming7b6a39bc7b3edf2290dcea74,
        builder: (column) => column,
      );

  GeneratedColumn<String> get cokiSwimming9af26f21c2b33 => $composableBuilder(
    column: $table.cokiSwimming9af26f21c2b33,
    builder: (column) => column,
  );

  GeneratedColumn<String> get cokiSwimmingE070b66af5a82465 =>
      $composableBuilder(
        column: $table.cokiSwimmingE070b66af5a82465,
        builder: (column) => column,
      );

  GeneratedColumn<DateTime> get cokiSwimming514b073dd6131a57e6977ba2 =>
      $composableBuilder(
        column: $table.cokiSwimming514b073dd6131a57e6977ba2,
        builder: (column) => column,
      );

  GeneratedColumn<DateTime> get cokiSwimming33d2f31d45bcd84135 =>
      $composableBuilder(
        column: $table.cokiSwimming33d2f31d45bcd84135,
        builder: (column) => column,
      );
}

class $$CokiSwimming73e845eb8995e10d78699TableTableManager
    extends
        RootTableManager<
          _$CokiSwimmingDatabase,
          $CokiSwimming73e845eb8995e10d78699Table,
          CokiSwimming73e845eb8995e10d78699Data,
          $$CokiSwimming73e845eb8995e10d78699TableFilterComposer,
          $$CokiSwimming73e845eb8995e10d78699TableOrderingComposer,
          $$CokiSwimming73e845eb8995e10d78699TableAnnotationComposer,
          $$CokiSwimming73e845eb8995e10d78699TableCreateCompanionBuilder,
          $$CokiSwimming73e845eb8995e10d78699TableUpdateCompanionBuilder,
          (
            CokiSwimming73e845eb8995e10d78699Data,
            BaseReferences<
              _$CokiSwimmingDatabase,
              $CokiSwimming73e845eb8995e10d78699Table,
              CokiSwimming73e845eb8995e10d78699Data
            >,
          ),
          CokiSwimming73e845eb8995e10d78699Data,
          PrefetchHooks Function()
        > {
  $$CokiSwimming73e845eb8995e10d78699TableTableManager(
    _$CokiSwimmingDatabase db,
    $CokiSwimming73e845eb8995e10d78699Table table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CokiSwimming73e845eb8995e10d78699TableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$CokiSwimming73e845eb8995e10d78699TableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CokiSwimming73e845eb8995e10d78699TableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> cokiSwimmingCe270c0c89ce45814c97b26d =
                    const Value.absent(),
                Value<int> cokiSwimming374c2d33d71555c = const Value.absent(),
                Value<String> cokiSwimming7b6a39bc7b3edf2290dcea74 =
                    const Value.absent(),
                Value<String> cokiSwimming9af26f21c2b33 = const Value.absent(),
                Value<String> cokiSwimmingE070b66af5a82465 =
                    const Value.absent(),
                Value<DateTime> cokiSwimming514b073dd6131a57e6977ba2 =
                    const Value.absent(),
                Value<DateTime> cokiSwimming33d2f31d45bcd84135 =
                    const Value.absent(),
              }) => CokiSwimming73e845eb8995e10d78699Companion(
                cokiSwimmingCe270c0c89ce45814c97b26d:
                    cokiSwimmingCe270c0c89ce45814c97b26d,
                cokiSwimming374c2d33d71555c: cokiSwimming374c2d33d71555c,
                cokiSwimming7b6a39bc7b3edf2290dcea74:
                    cokiSwimming7b6a39bc7b3edf2290dcea74,
                cokiSwimming9af26f21c2b33: cokiSwimming9af26f21c2b33,
                cokiSwimmingE070b66af5a82465: cokiSwimmingE070b66af5a82465,
                cokiSwimming514b073dd6131a57e6977ba2:
                    cokiSwimming514b073dd6131a57e6977ba2,
                cokiSwimming33d2f31d45bcd84135: cokiSwimming33d2f31d45bcd84135,
              ),
          createCompanionCallback:
              ({
                Value<int> cokiSwimmingCe270c0c89ce45814c97b26d =
                    const Value.absent(),
                required int cokiSwimming374c2d33d71555c,
                required String cokiSwimming7b6a39bc7b3edf2290dcea74,
                required String cokiSwimming9af26f21c2b33,
                required String cokiSwimmingE070b66af5a82465,
                required DateTime cokiSwimming514b073dd6131a57e6977ba2,
                required DateTime cokiSwimming33d2f31d45bcd84135,
              }) => CokiSwimming73e845eb8995e10d78699Companion.insert(
                cokiSwimmingCe270c0c89ce45814c97b26d:
                    cokiSwimmingCe270c0c89ce45814c97b26d,
                cokiSwimming374c2d33d71555c: cokiSwimming374c2d33d71555c,
                cokiSwimming7b6a39bc7b3edf2290dcea74:
                    cokiSwimming7b6a39bc7b3edf2290dcea74,
                cokiSwimming9af26f21c2b33: cokiSwimming9af26f21c2b33,
                cokiSwimmingE070b66af5a82465: cokiSwimmingE070b66af5a82465,
                cokiSwimming514b073dd6131a57e6977ba2:
                    cokiSwimming514b073dd6131a57e6977ba2,
                cokiSwimming33d2f31d45bcd84135: cokiSwimming33d2f31d45bcd84135,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CokiSwimming73e845eb8995e10d78699TableProcessedTableManager =
    ProcessedTableManager<
      _$CokiSwimmingDatabase,
      $CokiSwimming73e845eb8995e10d78699Table,
      CokiSwimming73e845eb8995e10d78699Data,
      $$CokiSwimming73e845eb8995e10d78699TableFilterComposer,
      $$CokiSwimming73e845eb8995e10d78699TableOrderingComposer,
      $$CokiSwimming73e845eb8995e10d78699TableAnnotationComposer,
      $$CokiSwimming73e845eb8995e10d78699TableCreateCompanionBuilder,
      $$CokiSwimming73e845eb8995e10d78699TableUpdateCompanionBuilder,
      (
        CokiSwimming73e845eb8995e10d78699Data,
        BaseReferences<
          _$CokiSwimmingDatabase,
          $CokiSwimming73e845eb8995e10d78699Table,
          CokiSwimming73e845eb8995e10d78699Data
        >,
      ),
      CokiSwimming73e845eb8995e10d78699Data,
      PrefetchHooks Function()
    >;

class $CokiSwimmingDatabaseManager {
  final _$CokiSwimmingDatabase _db;
  $CokiSwimmingDatabaseManager(this._db);
  $$CokiSwimmingMembersTableTableManager get cokiSwimmingMembers =>
      $$CokiSwimmingMembersTableTableManager(_db, _db.cokiSwimmingMembers);
  $$CokiSwimmingGuideLinesTableTableManager get cokiSwimmingGuideLines =>
      $$CokiSwimmingGuideLinesTableTableManager(
        _db,
        _db.cokiSwimmingGuideLines,
      );
  $$CokiSwimmingStoreReceiptsTableTableManager get cokiSwimmingStoreReceipts =>
      $$CokiSwimmingStoreReceiptsTableTableManager(
        _db,
        _db.cokiSwimmingStoreReceipts,
      );
  $$CokiSwimming73e845eb8995e10d78699TableTableManager
  get cokiSwimming73e845eb8995e10d78699 =>
      $$CokiSwimming73e845eb8995e10d78699TableTableManager(
        _db,
        _db.cokiSwimming73e845eb8995e10d78699,
      );
}
