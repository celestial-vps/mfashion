import 'package:flutter/material.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_icon.dart';
import 'package:mfashion/core/misc/app_image.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_button.dart';
import 'package:mfashion/core/widget/celestial_icon.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';

class WomentPage extends StatelessWidget {
  const WomentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            celestialImageLocal(
                AppImage.profile2,
                (4 / 100) * SizeConfig.screenHeight,
                (4 / 100) * SizeConfig.screenHeight),
            Column(
              children: [
                celestialLabel(
                    "Sandy William", AppStyle.label8White, TextAlign.left),
                celestialLabel(
                    "FREELANCE TAILOR", AppStyle.label8White, TextAlign.left)
              ],
            ),
            celestialIcon(AppIcon.loveIcon, AppColor.blackColor, true),
            celestialLabel("23k", AppStyle.label8White, TextAlign.right),
            celestialLabel(
                "If you are looking for the latest and the most stylish Pakistan lawn collection 2018 with chiffon dupatta, you have come at the right place as Alkaram has brought fully embroidered lawn suits with chiffon and sleeves in its wide range of stitched and unstitched lawn suits.",
                AppStyle.label8White,
                TextAlign.left),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    celestialLabel(
                        "#Summer", AppStyle.label8White, TextAlign.center),
                    celestialLabel(
                        "#Purple", AppStyle.label8White, TextAlign.center),
                  ],
                ),
                Row(
                  children: [
                    celestialButtonIcon(
                        () {},
                        (4 / 100) * SizeConfig.screenHeight,
                        AppIcon.sharedIcon,
                        AppColor.blackColor),
                    celestialLabel(
                        "12k", AppStyle.label8White, TextAlign.center),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
