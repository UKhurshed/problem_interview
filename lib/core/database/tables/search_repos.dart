import 'package:drift/drift.dart';

@DataClassName('SearchRepo')
class SearchRepos extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get avatarURL => text().nullable()();

  TextColumn get fullName => text().nullable()();

  TextColumn get htmlURL => text().nullable()();

  TextColumn get description => text().nullable()();

  IntColumn get stargazersCount => integer().nullable()();

  IntColumn get watchersCount => integer().nullable()();
}
