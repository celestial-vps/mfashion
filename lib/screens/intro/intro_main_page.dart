import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/controllers/intro_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/screens/intro/intro_one_page.dart';
import 'package:mfashion/screens/intro/intro_tree_page.dart';
import 'package:mfashion/screens/intro/intro_two_page.dart';
import 'package:mfashion/screens/intro/widget/build_dot.dart';

class IntroMainPage extends StatelessWidget {
  IntroMainPage({Key? key}) : super(key: key);
  final introController = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Flexible(
              // flex: 3,
              child: PageView(
                onPageChanged: (value) => introController.currentPage = value,
                children: [
                  introOne(introController),
                  introTwo(1),
                  introTree(2),
                ],
              ),
            ),
            Positioned(
              top: (82 / 100) * SizeConfig.screenHeight,
              left: (16 / 100) * SizeConfig.screenHeight,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => buildDot(
                          index: index,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (4 / 100) * SizeConfig.screenHeight,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: (16 / 100) * SizeConfig.screenHeight,
                      ),
                      child: Divider(
                          color: AppColor.whiteColor,
                          height: (4 / 100) * SizeConfig.screenHeight),
                    ),
                    SizedBox(
                      height: (4 / 100) * SizeConfig.screenHeight,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: (88 / 100) * SizeConfig.screenHeight,
              left: (16 / 100) * SizeConfig.screenHeight,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (16 / 100) * SizeConfig.screenHeight,
                ),
                child: Container(
                  height: 10,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    color: AppColor.blackColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
