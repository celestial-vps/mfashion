import 'package:flutter/material.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_icon.dart';
import 'package:mfashion/core/misc/app_image.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_icon.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';

class ProductMainPage extends StatelessWidget {
  const ProductMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            celestialImageLocal(
                AppImage.product1,
                (4 / 100) * SizeConfig.screenHeight,
                (4 / 100) * SizeConfig.screenHeight),
            Row(
              children: [
                celestialIcon(AppIcon.ovalIcon, AppColor.blackColor, true),
                celestialIcon(AppIcon.ovalIcon, AppColor.blackColor, true),
                celestialIcon(AppIcon.ovalIcon, AppColor.blackColor, true)
              ],
            ),
            celestialLabel("Perfect Situation Purple Long Sleeve Dress",
                AppStyle.label8White, TextAlign.left),
            celestialLabel(" 25.99", AppStyle.label8White, TextAlign.left)
          ],
        ),
      ),
    );
  }
}
