import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:problem_interview/core/extensions/screen_size.dart';
import 'package:problem_interview/screens/home/bloc/search_repositories/search_repositories_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FailureDialog extends StatelessWidget {
  final String errorMessage;

  const FailureDialog({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.appWidth * 16.w),
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: context.appHeight * 18.h),
              Text(GetIt.I.get<AppLocalizations>().oupsError,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xFF343435),
                      fontWeight: FontWeight.w500)),
              SizedBox(height: context.appHeight * 25.h),
              Text(errorMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF343435),
                      fontWeight: FontWeight.normal)),
              SizedBox(height: context.appHeight * 30.h),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    BlocProvider.of<SearchRepositoriesBloc>(context).add(ClearState());
                    Navigator.of(context).pop();

                  },
                  child: Text(GetIt.I.get<AppLocalizations>().close))
            ],
          ),
        ),
      ),
    );
  }
}