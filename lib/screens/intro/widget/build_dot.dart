import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/controllers/intro_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';

AnimatedContainer buildDot({int? index}) {
  final introController = Get.put(IntroController());

  return AnimatedContainer(
    duration: const Duration(seconds: 2),
    margin: const EdgeInsets.only(right: 5),
    height: 6,
    width: introController.currentPage == index ? 20 : 6,
    decoration: BoxDecoration(
      color: introController.currentPage == index
          ? AppColor.blackColor
          : const Color(0xFFD8D8D8),
      borderRadius: BorderRadius.circular(3),
    ),
  );
}
