import 'package:drift/drift.dart';
import 'package:problem_interview/core/database/search_repos_database.dart';
import 'package:problem_interview/core/database/tables/search_repos.dart';
import 'package:problem_interview/screens/home/bloc/search_repositories/search_repositories_bloc.dart';
import 'package:problem_interview/screens/home/data/repository/search_repositories.dart';

part "search_repos_dao.g.dart";

@DriftAccessor(tables: [SearchRepos])
class SearchReposDao extends DatabaseAccessor<SearchReposDatabase>
    with _$SearchReposDaoMixin {
  SearchReposDao(super.attachedDatabase);

  Stream<List<SearchRepo>> get searchSavedRepos => select(searchRepos).watch();

  Future<void> saveSearchRepos(List<ViewData> viewData) async {
    List<SearchReposCompanion> savingSearchRepos = List.generate(
        viewData.length,
        (index) => SearchReposCompanion.insert(
            avatarURL: Value(viewData[index].avatarURL),
            fullName: Value(viewData[index].fullName),
            description: Value(viewData[index].description),
            stargazersCount: Value(viewData[index].stargazersCount),
            watchersCount: Value(viewData[index].watchersCount),
            htmlURL: Value(viewData[index].htmlURL)));
    await batch((batch) => batch.insertAll(searchRepos, savingSearchRepos));
  }

  Future<void> deleteAllRepos() async {
    await delete(searchRepos).go();
  }

  Future<List<SearchRepo>> sort(SearchSort sort) async {
    if (sort == SearchSort.stars) {
      return (select(searchRepos)
            ..orderBy([
              (t) => OrderingTerm(
                  expression: t.stargazersCount, mode: OrderingMode.asc)
            ]))
          .get();
    } else {
      return (select(searchRepos)
            ..orderBy([
              (t) => OrderingTerm(
                  expression: t.watchersCount, mode: OrderingMode.desc)
            ]))
          .get();
    }
  }
}
