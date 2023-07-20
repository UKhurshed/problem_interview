import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:problem_interview/core/extensions/screen_size.dart';
import 'package:problem_interview/main.dart';
import 'package:problem_interview/screens/profile/image_pick_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void pick(BuildContext context, ImageSource imageSource) {
    Future.delayed(Duration.zero, () async {
      ImagePicker image = ImagePicker();
      image.pickImage(source: imageSource).then((value) async {
        if (value != null) {
          BlocProvider.of<ImagePickCubit>(context).pickImage(value);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            GetIt.I.get<AppLocalizations>().myProfile,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: context.appHeight * 32.h),
              InkWell(
                onTap: () {
                  ImagePick.selectImg(context, pick, false);
                },
                child: Center(
                  child: BlocBuilder<ImagePickCubit, XFile?>(
                    builder: (context, state) {
                      if (state == null) {
                        return Container(
                          height: context.appHeight * 100.h,
                          width: context.appWidth * 100.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300,
                              border:
                                  Border.all(width: 1.0, color: Colors.green)),
                          child: const Center(
                            child: Icon(Icons.person, size: 26),
                          ),
                        );
                      } else {
                        return Container(
                          height: context.appHeight * 100.h,
                          width: context.appWidth * 100.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 1.0, color: Colors.grey.shade200),
                              image: DecorationImage(
                                  image: FileImage(File(state.path)),
                                  fit: BoxFit.fill)),
                        );
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: context.appHeight * 30.h),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.appWidth * 25.w),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: GetIt.I.get<AppLocalizations>().enterName,
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
              SizedBox(height: context.appHeight * 30.h),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.appWidth * 25.w),
                child: SizedBox(
                  width: context.appWidth,
                  height: context.appHeight * 45.h,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: Text(GetIt.I.get<AppLocalizations>().saveButton)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePick {
  static void selectImg(
      BuildContext context,
      Function(BuildContext context, ImageSource imageSource) savingImage,
      bool isEmptyAvatar) async {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (BuildContext modalContext) {
          return DraggableScrollableSheet(
              expand: false,
              minChildSize: 0.30,
              maxChildSize: 0.30,
              initialChildSize: 0.30,
              builder: (builderContext, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.appWidth * 20.w,
                          vertical: context.appHeight * 20.h),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                                width: context.appWidth * 44.w,
                                height: context.appHeight * 5.h,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFD8EFFE),
                                    borderRadius: BorderRadius.circular(3))),
                          ),
                          SizedBox(height: context.appHeight * 25.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  savingImage(context, ImageSource.gallery);
                                  Navigator.of(modalContext).pop();
                                },
                                child: Column(
                                  children: [
                                    const Icon(Icons.image,
                                        size: 45, color: Color(0xFF3EADFC)),
                                    SizedBox(height: context.appHeight * 8.h),
                                    const Text(
                                      "Галерея",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  savingImage(context, ImageSource.camera);
                                  Navigator.of(modalContext).pop();
                                },
                                child: Column(
                                  children: [
                                    const Icon(Icons.camera_alt,
                                        size: 45, color: Color(0xFF3EADFC)),
                                    SizedBox(height: context.appHeight * 8.h),
                                    const Text(
                                      "Камера",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: context.appHeight * 20.h),
                          isEmptyAvatar
                              ? Center(
                                  child: InkWell(
                                    onTap: () {
                                      BlocProvider.of<ImagePickCubit>(context)
                                          .remove();
                                      Navigator.of(modalContext).pop();
                                    },
                                    child: Column(
                                      children: [
                                        const Icon(Icons.remove_circle_rounded,
                                            size: 45, color: Colors.red),
                                        SizedBox(
                                            height: context.appHeight * 8.h),
                                        const Text('Удалить аватарку',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black))
                                      ],
                                    ),
                                  ),
                                )
                              : Container()
                        ],
                      )),
                );
              });
        });
  }
}
