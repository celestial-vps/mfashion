import 'package:flutter/material.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_image.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_button.dart';
import 'package:mfashion/core/widget/celestial_label.dart';

Widget introTree(int currentPage) => Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.intro3),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (4 / 100) * SizeConfig.screenHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                celestialLabel("No", AppStyle.label30WhiteBold, TextAlign.left),
                celestialLabel("1", AppStyle.label51WhiteBold, TextAlign.left)
              ],
            ),
            celestialLabel(
                "Featured", AppStyle.label24PinkBold, TextAlign.left),
            SizedBox(
              height: (2 / 100) * SizeConfig.screenHeight,
            ),
            celestialLabel(
                "Tailored", AppStyle.label51WhiteBold, TextAlign.left),
            SizedBox(
              height: (2 / 100) * SizeConfig.screenHeight,
            ),
            celestialLabelReadmore(
                "",
                "Christain Lobi ",
                "showing us his new summer beach wears",
                AppStyle.label18White,
                AppStyle.label20WhiteBold,
                TextAlign.left),
            SizedBox(
              height: (4 / 100) * SizeConfig.screenHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: (4 / 100) * SizeConfig.screenHeight,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColor.whiteColor),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.transparent,
                  ),
                  child: celestialButtonLabel(
                      () {}, "Shop Now", AppStyle.label8White)),
            ),
            SizedBox(
              height: (20 / 100) * SizeConfig.screenHeight,
            ),
            // SizedBox(
            //   height: (4 / 100) * SizeConfig.screenHeight,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: List.generate(
            //     3,
            //     (index) => buildDot(index: currentPage),
            //   ),
            // ),
            // SizedBox(
            //   height: (4 / 100) * SizeConfig.screenHeight,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //     horizontal: (16 / 100) * SizeConfig.screenHeight,
            //   ),
            //   child: Divider(
            //       color: AppColor.whiteColor,
            //       height: (4 / 100) * SizeConfig.screenHeight),
            // ),
            // SizedBox(
            //   height: (4 / 100) * SizeConfig.screenHeight,
            // ),
          ],
        ),
      ),
    );
