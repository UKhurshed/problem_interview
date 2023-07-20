import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:problem_interview/core/route/route_names.dart';
import 'package:problem_interview/screens/home/home_screen.dart';
import 'package:problem_interview/screens/bottom_navigation_bar/main_screen.dart';
import 'package:problem_interview/screens/profile/profile_screen.dart';
import 'package:problem_interview/screens/repository_home_url/repository_home_url_screen.dart';
import 'package:problem_interview/screens/splash/splash_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter get router => _router;

  static final _router = GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
            path: '/',
            name: RouteNames.splash,
            builder: (context, state) => const SplashScreen()),
        GoRoute(
            path: '/repository-html-url',
            name: RouteNames.repositoryHtmlUrl,
            builder: (context, state) => RepositoryHomeUrlScreen(
                url: state.queryParameters['htmlUrl'] as String)),
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) => MainScreen(child: child),
            routes: [
              GoRoute(
                  path: '/home',
                  name: RouteNames.home,
                  builder: (context, state) => const HomeScreen()),
              GoRoute(
                  path: '/profile',
                  name: RouteNames.profile,
                  builder: (context, state) => const ProfileScreen()),
            ])
      ]);
}
