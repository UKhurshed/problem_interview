

import 'dart:io';
import 'package:path/path.dart' as p;

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:problem_interview/core/database/daos/profile_repos_dao.dart';
import 'package:problem_interview/core/database/daos/search_repos_dao.dart';
import 'package:problem_interview/core/database/tables/profile_repos.dart';
import 'package:problem_interview/core/database/tables/search_repos.dart';

part 'search_repos_database.g.dart';

@DriftDatabase(tables:[SearchRepos, ProfileRepos],daos: [SearchReposDao, ProfileReposDao])
class SearchReposDatabase extends _$SearchReposDatabase {
  // we tell the database where to store the data with this constructor
  SearchReposDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}