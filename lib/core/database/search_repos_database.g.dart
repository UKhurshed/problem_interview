// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repos_database.dart';

// ignore_for_file: type=lint
class $SearchReposTable extends SearchRepos
    with TableInfo<$SearchReposTable, SearchRepo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SearchReposTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _avatarURLMeta =
      const VerificationMeta('avatarURL');
  @override
  late final GeneratedColumn<String> avatarURL = GeneratedColumn<String>(
      'avatar_u_r_l', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _htmlURLMeta =
      const VerificationMeta('htmlURL');
  @override
  late final GeneratedColumn<String> htmlURL = GeneratedColumn<String>(
      'html_u_r_l', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stargazersCountMeta =
      const VerificationMeta('stargazersCount');
  @override
  late final GeneratedColumn<int> stargazersCount = GeneratedColumn<int>(
      'stargazers_count', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _watchersCountMeta =
      const VerificationMeta('watchersCount');
  @override
  late final GeneratedColumn<int> watchersCount = GeneratedColumn<int>(
      'watchers_count', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        avatarURL,
        fullName,
        htmlURL,
        description,
        stargazersCount,
        watchersCount
      ];
  @override
  String get aliasedName => _alias ?? 'search_repos';
  @override
  String get actualTableName => 'search_repos';
  @override
  VerificationContext validateIntegrity(Insertable<SearchRepo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('avatar_u_r_l')) {
      context.handle(
          _avatarURLMeta,
          avatarURL.isAcceptableOrUnknown(
              data['avatar_u_r_l']!, _avatarURLMeta));
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    }
    if (data.containsKey('html_u_r_l')) {
      context.handle(_htmlURLMeta,
          htmlURL.isAcceptableOrUnknown(data['html_u_r_l']!, _htmlURLMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('stargazers_count')) {
      context.handle(
          _stargazersCountMeta,
          stargazersCount.isAcceptableOrUnknown(
              data['stargazers_count']!, _stargazersCountMeta));
    }
    if (data.containsKey('watchers_count')) {
      context.handle(
          _watchersCountMeta,
          watchersCount.isAcceptableOrUnknown(
              data['watchers_count']!, _watchersCountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SearchRepo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchRepo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      avatarURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar_u_r_l']),
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name']),
      htmlURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}html_u_r_l']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      stargazersCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}stargazers_count']),
      watchersCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}watchers_count']),
    );
  }

  @override
  $SearchReposTable createAlias(String alias) {
    return $SearchReposTable(attachedDatabase, alias);
  }
}

class SearchRepo extends DataClass implements Insertable<SearchRepo> {
  final int id;
  final String? avatarURL;
  final String? fullName;
  final String? htmlURL;
  final String? description;
  final int? stargazersCount;
  final int? watchersCount;
  const SearchRepo(
      {required this.id,
      this.avatarURL,
      this.fullName,
      this.htmlURL,
      this.description,
      this.stargazersCount,
      this.watchersCount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || avatarURL != null) {
      map['avatar_u_r_l'] = Variable<String>(avatarURL);
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || htmlURL != null) {
      map['html_u_r_l'] = Variable<String>(htmlURL);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || stargazersCount != null) {
      map['stargazers_count'] = Variable<int>(stargazersCount);
    }
    if (!nullToAbsent || watchersCount != null) {
      map['watchers_count'] = Variable<int>(watchersCount);
    }
    return map;
  }

  SearchReposCompanion toCompanion(bool nullToAbsent) {
    return SearchReposCompanion(
      id: Value(id),
      avatarURL: avatarURL == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarURL),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      htmlURL: htmlURL == null && nullToAbsent
          ? const Value.absent()
          : Value(htmlURL),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      stargazersCount: stargazersCount == null && nullToAbsent
          ? const Value.absent()
          : Value(stargazersCount),
      watchersCount: watchersCount == null && nullToAbsent
          ? const Value.absent()
          : Value(watchersCount),
    );
  }

  factory SearchRepo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchRepo(
      id: serializer.fromJson<int>(json['id']),
      avatarURL: serializer.fromJson<String?>(json['avatarURL']),
      fullName: serializer.fromJson<String?>(json['fullName']),
      htmlURL: serializer.fromJson<String?>(json['htmlURL']),
      description: serializer.fromJson<String?>(json['description']),
      stargazersCount: serializer.fromJson<int?>(json['stargazersCount']),
      watchersCount: serializer.fromJson<int?>(json['watchersCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'avatarURL': serializer.toJson<String?>(avatarURL),
      'fullName': serializer.toJson<String?>(fullName),
      'htmlURL': serializer.toJson<String?>(htmlURL),
      'description': serializer.toJson<String?>(description),
      'stargazersCount': serializer.toJson<int?>(stargazersCount),
      'watchersCount': serializer.toJson<int?>(watchersCount),
    };
  }

  SearchRepo copyWith(
          {int? id,
          Value<String?> avatarURL = const Value.absent(),
          Value<String?> fullName = const Value.absent(),
          Value<String?> htmlURL = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<int?> stargazersCount = const Value.absent(),
          Value<int?> watchersCount = const Value.absent()}) =>
      SearchRepo(
        id: id ?? this.id,
        avatarURL: avatarURL.present ? avatarURL.value : this.avatarURL,
        fullName: fullName.present ? fullName.value : this.fullName,
        htmlURL: htmlURL.present ? htmlURL.value : this.htmlURL,
        description: description.present ? description.value : this.description,
        stargazersCount: stargazersCount.present
            ? stargazersCount.value
            : this.stargazersCount,
        watchersCount:
            watchersCount.present ? watchersCount.value : this.watchersCount,
      );
  @override
  String toString() {
    return (StringBuffer('SearchRepo(')
          ..write('id: $id, ')
          ..write('avatarURL: $avatarURL, ')
          ..write('fullName: $fullName, ')
          ..write('htmlURL: $htmlURL, ')
          ..write('description: $description, ')
          ..write('stargazersCount: $stargazersCount, ')
          ..write('watchersCount: $watchersCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, avatarURL, fullName, htmlURL, description,
      stargazersCount, watchersCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchRepo &&
          other.id == this.id &&
          other.avatarURL == this.avatarURL &&
          other.fullName == this.fullName &&
          other.htmlURL == this.htmlURL &&
          other.description == this.description &&
          other.stargazersCount == this.stargazersCount &&
          other.watchersCount == this.watchersCount);
}

class SearchReposCompanion extends UpdateCompanion<SearchRepo> {
  final Value<int> id;
  final Value<String?> avatarURL;
  final Value<String?> fullName;
  final Value<String?> htmlURL;
  final Value<String?> description;
  final Value<int?> stargazersCount;
  final Value<int?> watchersCount;
  const SearchReposCompanion({
    this.id = const Value.absent(),
    this.avatarURL = const Value.absent(),
    this.fullName = const Value.absent(),
    this.htmlURL = const Value.absent(),
    this.description = const Value.absent(),
    this.stargazersCount = const Value.absent(),
    this.watchersCount = const Value.absent(),
  });
  SearchReposCompanion.insert({
    this.id = const Value.absent(),
    this.avatarURL = const Value.absent(),
    this.fullName = const Value.absent(),
    this.htmlURL = const Value.absent(),
    this.description = const Value.absent(),
    this.stargazersCount = const Value.absent(),
    this.watchersCount = const Value.absent(),
  });
  static Insertable<SearchRepo> custom({
    Expression<int>? id,
    Expression<String>? avatarURL,
    Expression<String>? fullName,
    Expression<String>? htmlURL,
    Expression<String>? description,
    Expression<int>? stargazersCount,
    Expression<int>? watchersCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (avatarURL != null) 'avatar_u_r_l': avatarURL,
      if (fullName != null) 'full_name': fullName,
      if (htmlURL != null) 'html_u_r_l': htmlURL,
      if (description != null) 'description': description,
      if (stargazersCount != null) 'stargazers_count': stargazersCount,
      if (watchersCount != null) 'watchers_count': watchersCount,
    });
  }

  SearchReposCompanion copyWith(
      {Value<int>? id,
      Value<String?>? avatarURL,
      Value<String?>? fullName,
      Value<String?>? htmlURL,
      Value<String?>? description,
      Value<int?>? stargazersCount,
      Value<int?>? watchersCount}) {
    return SearchReposCompanion(
      id: id ?? this.id,
      avatarURL: avatarURL ?? this.avatarURL,
      fullName: fullName ?? this.fullName,
      htmlURL: htmlURL ?? this.htmlURL,
      description: description ?? this.description,
      stargazersCount: stargazersCount ?? this.stargazersCount,
      watchersCount: watchersCount ?? this.watchersCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (avatarURL.present) {
      map['avatar_u_r_l'] = Variable<String>(avatarURL.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (htmlURL.present) {
      map['html_u_r_l'] = Variable<String>(htmlURL.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (stargazersCount.present) {
      map['stargazers_count'] = Variable<int>(stargazersCount.value);
    }
    if (watchersCount.present) {
      map['watchers_count'] = Variable<int>(watchersCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchReposCompanion(')
          ..write('id: $id, ')
          ..write('avatarURL: $avatarURL, ')
          ..write('fullName: $fullName, ')
          ..write('htmlURL: $htmlURL, ')
          ..write('description: $description, ')
          ..write('stargazersCount: $stargazersCount, ')
          ..write('watchersCount: $watchersCount')
          ..write(')'))
        .toString();
  }
}

class $ProfileReposTable extends ProfileRepos
    with TableInfo<$ProfileReposTable, ProfileRepo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfileReposTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<Uint8List> avatar = GeneratedColumn<Uint8List>(
      'avatar', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, avatar, fullName];
  @override
  String get aliasedName => _alias ?? 'profile_repos';
  @override
  String get actualTableName => 'profile_repos';
  @override
  VerificationContext validateIntegrity(Insertable<ProfileRepo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProfileRepo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProfileRepo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}avatar']),
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name']),
    );
  }

  @override
  $ProfileReposTable createAlias(String alias) {
    return $ProfileReposTable(attachedDatabase, alias);
  }
}

class ProfileRepo extends DataClass implements Insertable<ProfileRepo> {
  final int id;
  final Uint8List? avatar;
  final String? fullName;
  const ProfileRepo({required this.id, this.avatar, this.fullName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || avatar != null) {
      map['avatar'] = Variable<Uint8List>(avatar);
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    return map;
  }

  ProfileReposCompanion toCompanion(bool nullToAbsent) {
    return ProfileReposCompanion(
      id: Value(id),
      avatar:
          avatar == null && nullToAbsent ? const Value.absent() : Value(avatar),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
    );
  }

  factory ProfileRepo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProfileRepo(
      id: serializer.fromJson<int>(json['id']),
      avatar: serializer.fromJson<Uint8List?>(json['avatar']),
      fullName: serializer.fromJson<String?>(json['fullName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'avatar': serializer.toJson<Uint8List?>(avatar),
      'fullName': serializer.toJson<String?>(fullName),
    };
  }

  ProfileRepo copyWith(
          {int? id,
          Value<Uint8List?> avatar = const Value.absent(),
          Value<String?> fullName = const Value.absent()}) =>
      ProfileRepo(
        id: id ?? this.id,
        avatar: avatar.present ? avatar.value : this.avatar,
        fullName: fullName.present ? fullName.value : this.fullName,
      );
  @override
  String toString() {
    return (StringBuffer('ProfileRepo(')
          ..write('id: $id, ')
          ..write('avatar: $avatar, ')
          ..write('fullName: $fullName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, $driftBlobEquality.hash(avatar), fullName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProfileRepo &&
          other.id == this.id &&
          $driftBlobEquality.equals(other.avatar, this.avatar) &&
          other.fullName == this.fullName);
}

class ProfileReposCompanion extends UpdateCompanion<ProfileRepo> {
  final Value<int> id;
  final Value<Uint8List?> avatar;
  final Value<String?> fullName;
  const ProfileReposCompanion({
    this.id = const Value.absent(),
    this.avatar = const Value.absent(),
    this.fullName = const Value.absent(),
  });
  ProfileReposCompanion.insert({
    this.id = const Value.absent(),
    this.avatar = const Value.absent(),
    this.fullName = const Value.absent(),
  });
  static Insertable<ProfileRepo> custom({
    Expression<int>? id,
    Expression<Uint8List>? avatar,
    Expression<String>? fullName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (avatar != null) 'avatar': avatar,
      if (fullName != null) 'full_name': fullName,
    });
  }

  ProfileReposCompanion copyWith(
      {Value<int>? id, Value<Uint8List?>? avatar, Value<String?>? fullName}) {
    return ProfileReposCompanion(
      id: id ?? this.id,
      avatar: avatar ?? this.avatar,
      fullName: fullName ?? this.fullName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<Uint8List>(avatar.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfileReposCompanion(')
          ..write('id: $id, ')
          ..write('avatar: $avatar, ')
          ..write('fullName: $fullName')
          ..write(')'))
        .toString();
  }
}

abstract class _$SearchReposDatabase extends GeneratedDatabase {
  _$SearchReposDatabase(QueryExecutor e) : super(e);
  late final $SearchReposTable searchRepos = $SearchReposTable(this);
  late final $ProfileReposTable profileRepos = $ProfileReposTable(this);
  late final SearchReposDao searchReposDao =
      SearchReposDao(this as SearchReposDatabase);
  late final ProfileReposDao profileReposDao =
      ProfileReposDao(this as SearchReposDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [searchRepos, profileRepos];
}
