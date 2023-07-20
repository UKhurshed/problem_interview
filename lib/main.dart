import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:problem_interview/app_bloc_observer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:problem_interview/core/route/app_route.dart';
import 'package:problem_interview/screens/home/bloc/search_repositories/search_repositories_bloc.dart';

void main() {
  runApp(const App());
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<SearchRepositoriesBloc>(),
      child: MaterialApp.router(
        title: 'Search Github repos',
        locale: const Locale('ru', 'Ru'),
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
      ),
    );
  }
}
