import 'package:flutter/material.dart';
import 'package:problem_interview/core/extensions/screen_size.dart';
import 'package:problem_interview/screens/home/data/model/search_repositories_model.dart';
import 'package:problem_interview/screens/home/data/repository/search_repositories.dart';

class StarsAndWatchers extends StatelessWidget {
  final ViewData item;

  const StarsAndWatchers({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.appHeight * 8.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('${item.stargazersCount ?? 0}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(width: context.appWidth * 2.w),
              const Icon(Icons.star, color: Colors.black, size: 16)
            ],
          ),
          Row(
            children: [
              Text('${item.watchersCount ?? 0}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(width: context.appWidth * 2.w),
              const Icon(Icons.remove_red_eye, color: Colors.black, size: 16)
            ],
          ),
        ],
      ),
    );
  }
}