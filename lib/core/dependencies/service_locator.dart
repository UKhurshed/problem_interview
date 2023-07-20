import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:problem_interview/core/database/search_repos_database.dart';
import 'package:problem_interview/screens/home/bloc/search_repositories/search_repositories_bloc.dart';
import 'package:problem_interview/screens/home/data/repository/search_repos_dao_repository.dart';
import 'package:problem_interview/screens/home/data/repository/search_repositories.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  static ServiceLocator? _internalSingleton;

  factory ServiceLocator() => _internalSingleton ??= ServiceLocator._internal();

  ServiceLocator._internal();

  static ServiceLocator get instance => _internalSingleton!;

  static ServiceLocator get I => _internalSingleton!;

  void registerDependency(BuildContext context) {
    getIt.registerLazySingleton<SearchReposDatabase>(
        () => SearchReposDatabase());
    getIt.registerSingleton<AppLocalizations>(AppLocalizations.of(context)!);
    getIt.registerLazySingleton<SearchRepositories>(
        () => SearchRepositoriesImpl());
    getIt.registerLazySingleton<SearchReposDAORepository>(() =>
        SearchReposDAORepositoryImpl(
            searchReposDao: ServiceLocator.I.searchDatabase.searchReposDao));
    getIt.registerFactory(() => SearchRepositoriesBloc(
        searchRepositories: getIt(), searchReposDAORepository: getIt()));
  }

  SearchReposDatabase get searchDatabase => getIt<SearchReposDatabase>();
}
