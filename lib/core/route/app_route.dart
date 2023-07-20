import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:problem_interview/core/route/route_names.dart';
import 'package:problem_interview/screens/home/home_screen.dart';
import 'package:problem_interview/screens/repository_home_url/repository_home_url_screen.dart';
import 'package:problem_interview/screens/splash/splash_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter get router => _router;

  static final _router = GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/splash',
      routes: [
        GoRoute(
            path: '/splash',
            name: RouteNames.splash,
            builder: (context, state) => const SplashScreen()),
        GoRoute(
            path: '/home',
            name: RouteNames.home,
            builder: (context, state) => const HomeScreen()),
        GoRoute(
            path: '/repository-html-url',
            name: RouteNames.repositoryHtmlUrl,
            builder: (context, state) => RepositoryHomeUrlScreen(
                url: state.queryParameters['htmlUrl'] as String))
      ]);
}
