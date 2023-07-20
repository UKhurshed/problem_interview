part of 'search_repositories_bloc.dart';

@freezed
class SearchRepositoriesEvent with _$SearchRepositoriesEvent {
  const factory SearchRepositoriesEvent.searchRepositoriesByQuery(
      {required String query}) = SearchRepositoriesByQuery;

  const factory SearchRepositoriesEvent.updateSearchReposList(
      {required List<ViewData> list}) = UpdateSearchReposList;

  const factory SearchRepositoriesEvent.sortBy(
      {required SearchSort searchSort}) = SortBy;

  const factory SearchRepositoriesEvent.clearState() = ClearState;
}

enum SearchSort { stars, watchers }
