import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:meta/meta.dart';
import 'package:problem_interview/screens/home/data/repository/search_repos_dao_repository.dart';
import 'package:problem_interview/screens/home/data/repository/search_repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_repositories_event.dart';

part 'search_repositories_bloc.freezed.dart';

part 'search_repositories_state.dart';

class SearchRepositoriesBloc
    extends Bloc<SearchRepositoriesEvent, SearchRepositoriesState> {
  final SearchRepositories searchRepositories;
  final SearchReposDAORepository searchReposDAORepository;

  late StreamSubscription<List<ViewData>> _searchReposSubscription;

  SearchRepositoriesBloc(
      {required this.searchRepositories,
      required this.searchReposDAORepository})
      : super(SearchRepositoriesInitial()) {
    _searchReposSubscription =
        searchReposDAORepository.searchRepos.listen((event) {
      add(SearchRepositoriesEvent.updateSearchReposList(list: event));
    });
    on<SearchRepositoriesEvent>((event, emit) async {
      await event.map<Future<void>>(
        searchRepositoriesByQuery: (event) =>
            _mapSearchRepositories(event, emit),
        sortBy: (event) => _sortSearchRepos(event, emit),
        updateSearchReposList: (event) => _mapUpdateSearchRepos(event, emit),
        clearState: (event) => _mapClearState(event, emit),
      );
    }, transformer: sequential());
  }

  _mapSearchRepositories(SearchRepositoriesByQuery event,
      final Emitter<SearchRepositoriesState> emit) async {
    emit(SearchRepositoriesProgress());
    final result = await searchRepositories.searchBySubject(event.query);
    if (result.errorMessage != null) {
      emit(SearchRepositoriesFailure(errorMessage: result.errorMessage!));
    } else {
      try {
        await searchReposDAORepository.savedSearchRepos(result.response);
        _searchReposSubscription =
            searchReposDAORepository.searchRepos.listen((event) {
          add(SearchRepositoriesEvent.updateSearchReposList(list: event));
        });
      } on Exception catch (err, stackTrace) {
        emit(SearchRepositoriesFailure(errorMessage: stackTrace.toString()));
      }
    }
  }

  _sortSearchRepos(
      SortBy event, final Emitter<SearchRepositoriesState> emit) async {
    emit(SearchRepositoriesProgress());
    final result =
        await searchReposDAORepository.sortingSearchRepos(event.searchSort);
    add(UpdateSearchReposList(list: result));
  }

  _mapUpdateSearchRepos(UpdateSearchReposList event,
      final Emitter<SearchRepositoriesState> emit) async {
    emit(SearchRepositoriesProgress());
    emit(SearchRepositoriesSuccess(listItem: event.list));
  }

  _mapClearState(
      ClearState event, final Emitter<SearchRepositoriesState> emit) {
    emit(SearchRepositoriesInitial());
  }

  @override
  Future<void> close() {
    _searchReposSubscription.cancel();
    return super.close();
  }
}
