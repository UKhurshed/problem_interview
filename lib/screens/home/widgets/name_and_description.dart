import 'package:flutter/material.dart';
import 'package:problem_interview/core/extensions/screen_size.dart';
import 'package:problem_interview/screens/home/data/model/search_repositories_model.dart';
import 'package:problem_interview/screens/home/data/repository/search_repositories.dart';

class NameAndDescription extends StatelessWidget {
  final ViewData item;

  const NameAndDescription({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.appHeight * 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(item.fullName ?? "",
                maxLines: 1,
                style:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(item.description ?? "No description",
                maxLines: 1,
                style: const TextStyle(
                    fontSize: 15, fontWeight: FontWeight.normal))
          ],
        ),
      ),
    );
  }
}