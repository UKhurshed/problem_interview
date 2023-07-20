import 'package:flutter/material.dart';
import 'package:problem_interview/core/extensions/screen_size.dart';

class EmptyAvatar extends StatelessWidget {
  const EmptyAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.appWidth * 42.w,
      height: context.appHeight * 42.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFF9FD6FD), width: 1),
          color: const Color(0xFFECF7FF)),
      child: const Center(child: Icon(Icons.person_rounded)),
    );
  }
}

class AvatarWithUrl extends StatelessWidget {
  final String url;

  const AvatarWithUrl({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.appWidth * 50.w,
        height: context.appHeight * 50.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFF9FD6FD), width: 1.0),
          color: const Color(0xFFECF7FF),
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.contain),
        ));
  }
}
