// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coki_swimming_storage_database.dart';

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
          ..write('profileCompleted: $profileCompleted, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
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
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cokiSwimmingMembers];
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

class $CokiSwimmingDatabaseManager {
  final _$CokiSwimmingDatabase _db;
  $CokiSwimmingDatabaseManager(this._db);
  $$CokiSwimmingMembersTableTableManager get cokiSwimmingMembers =>
      $$CokiSwimmingMembersTableTableManager(_db, _db.cokiSwimmingMembers);
}
