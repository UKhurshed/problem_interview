part of 'search_repositories_bloc.dart';

@immutable
abstract class SearchRepositoriesState {}

class SearchRepositoriesInitial extends SearchRepositoriesState {}

class SearchRepositoriesProgress extends SearchRepositoriesState {}

class SearchRepositoriesSuccess extends SearchRepositoriesState {
  final List<ViewData> listItem;

  SearchRepositoriesSuccess({required this.listItem});
}

class SearchRepositoriesFailure extends SearchRepositoriesState {
  final String errorMessage;

  SearchRepositoriesFailure({required this.errorMessage});
}
