import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:problem_interview/core/route/app_route.dart';
import 'package:problem_interview/core/route/route_names.dart';
import 'package:problem_interview/screens/bottom_navigation_bar/cubit/navigation_bar_index_cubit.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarIndexCubit, int>(
      builder: (context, state) {
        return BottomNavigationBar(
            currentIndex: state,
            onTap: (index) {
              BlocProvider.of<NavigationBarIndexCubit>(context)
                  .changeIndex(index);
              _onItemTapped(
                  BlocProvider.of<NavigationBarIndexCubit>(context).state);
            },
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.search, color: Colors.green),
                  label: GetIt.I.get<AppLocalizations>().search),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person, color: Colors.green),
                  label: GetIt.I.get<AppLocalizations>().profile)
            ]);
      },
    );
  }

  void _onItemTapped(int index) {
    if (index == 0) {
      AppRouter.router.goNamed(RouteNames.home);
    } else if (index == 1) {
      AppRouter.router.goNamed(RouteNames.profile);
    }
  }
}
