import 'package:drift/drift.dart';

@DataClassName('ProfileRepo')
class ProfileRepos extends Table {
  IntColumn get id => integer().autoIncrement()();

  BlobColumn get avatar => blob().nullable()();

  TextColumn get fullName => text().nullable()();
}
