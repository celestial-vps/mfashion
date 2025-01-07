import 'package:flutter/material.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_icon.dart';
import 'package:mfashion/core/misc/app_image.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_icon.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';
import 'package:mfashion/screens/measurement/tab/tab_bar_measurement.dart';

class MeasurementMainPage extends StatelessWidget {
  const MeasurementMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                celestialImageLocal(AppImage.product1,
                    (32 / 100) * SizeConfig.screenHeight, double.infinity),
                Positioned.fill(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: (2 / 100) * SizeConfig.screenHeight,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: (2 / 100) * SizeConfig.screenHeight),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Align(
                              alignment: Alignment.centerLeft,
                              child: celestialIcon(
                                  AppIcon.backIcon,
                                  AppColor.blackColor,
                                  true,
                                  (2 / 100) * SizeConfig.screenHeight),
                            )),
                            celestialIcon(AppIcon.loveIcon, AppColor.blackColor,
                                true, (2 / 100) * SizeConfig.screenHeight),
                            celestialIcon(
                                AppIcon.sharedIcon,
                                AppColor.blackColor,
                                true,
                                (2 / 100) * SizeConfig.screenHeight)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //
              ],
            ),
            SizedBox(
              height: (2 / 100) * SizeConfig.screenHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (2 / 100) * SizeConfig.screenHeight),
              child: Align(
                alignment: Alignment.centerLeft,
                child: celestialLabel(
                    "Perfect Situation Purple Long Sleeve Dress",
                    AppStyle.label20BlackBold,
                    TextAlign.left),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (2 / 100) * SizeConfig.screenHeight),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: celestialLabel(
                      " 25.99", AppStyle.label14PinkBold, TextAlign.left)),
            ),
            Flexible(child: TabBarMeasurement())
          ],
        ),
      ),
    );
  }
}
