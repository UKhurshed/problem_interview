import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:problem_interview/core/extensions/screen_size.dart';
import 'package:problem_interview/screens/home/bloc/search_repositories/search_repositories_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController searchController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _showClearButton = false;

  final border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green.shade200),
      borderRadius: BorderRadius.circular(8));

  @override
  void initState() {
    super.initState();
    searchController.addListener(_clearBtnStateChanging);
  }

  _clearBtnStateChanging() {
    setState(() {
      _showClearButton = searchController.text.isNotEmpty;
    });
  }

  Widget? _getClearButton() {
    if (!_showClearButton) {
      return null;
    }
    return GestureDetector(
      onTap: () {
        searchController.clear();
      },
      child: Icon(Icons.clear, color: Colors.green.shade300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextFormField(
              controller: searchController,
              onFieldSubmitted: (value) {
                final isValid = formKey.currentState?.validate() ?? false;
                if (isValid) {
                  BlocProvider.of<SearchRepositoriesBloc>(context)
                      .add(SearchRepositoriesByQuery(query: value));
                } else {
                  log('form is not valid');
                }
              },
              validator: (value) {
                if (value!.length < 3) {
                  return GetIt.I
                      .get<AppLocalizations>()
                      .requiredThreeCharacters;
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  hintText: GetIt.I.get<AppLocalizations>().textFieldHint,
                  prefixIcon: Icon(Icons.search, color: Colors.green.shade300),
                  border: border,
                  focusedBorder: border,
                  enabledBorder: border,
                  suffixIcon: _getClearButton()),
            ),
          ),
          SizedBox(width: context.appWidth * 15.w),
          Padding(
            padding: EdgeInsets.only(top: context.appHeight * 10.h),
            child: SizedBox(
              width: context.appWidth * 90.w,
              height: context.appHeight * 40.h,
              child: ElevatedButton(
                  onPressed: () {
                    final isValid = formKey.currentState?.validate() ?? false;
                    if (isValid) {
                      BlocProvider.of<SearchRepositoriesBloc>(context).add(
                          SearchRepositoriesByQuery(
                              query: searchController.text));
                    } else {
                      log('form is not valid');
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green)),
                  child: Text(GetIt.I.get<AppLocalizations>().search)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    searchController.removeListener(_clearBtnStateChanging);
    searchController.dispose();
    super.dispose();
  }
}
