import 'package:problem_interview/core/database/daos/search_repos_dao.dart';
import 'package:problem_interview/screens/home/bloc/search_repositories/search_repositories_bloc.dart';
import 'package:problem_interview/screens/home/data/repository/search_repositories.dart';

abstract class SearchReposDAORepository {
  Stream<List<ViewData>> get searchRepos;

  Future<void> savedSearchRepos(List<ViewData> viewData);

  Future<void> deleteAllRepos();

  Future<List<ViewData>> sortingSearchRepos(SearchSort searchSort);
}

class SearchReposDAORepositoryImpl implements SearchReposDAORepository {
  final SearchReposDao searchReposDao;

  SearchReposDAORepositoryImpl({required this.searchReposDao});

  @override
  Future<void> savedSearchRepos(List<ViewData> viewData) async {
    await searchReposDao.deleteAllRepos();
    await searchReposDao.saveSearchRepos(viewData);
  }

  @override
  Stream<List<ViewData>> get searchRepos =>
      searchReposDao.searchSavedRepos.map((event) => event
          .map((e) => ViewData(
              id: e.id,
              avatarURL: e.avatarURL,
              fullName: e.fullName,
              description: e.description,
              stargazersCount: e.stargazersCount,
              watchersCount: e.watchersCount,
              htmlURL: e.htmlURL))
          .toList());

  @override
  Future<void> deleteAllRepos() async {
    await searchReposDao.deleteAllRepos();
  }

  @override
  Future<List<ViewData>> sortingSearchRepos(SearchSort searchSort) async {
    final result = await searchReposDao.sort(searchSort);
    return result
        .map((e) => ViewData(
            id: e.id,
            avatarURL: e.avatarURL,
            fullName: e.fullName,
            htmlURL: e.htmlURL,
            description: e.description,
            stargazersCount: e.stargazersCount,
            watchersCount: e.watchersCount))
        .toList();
  }
}
