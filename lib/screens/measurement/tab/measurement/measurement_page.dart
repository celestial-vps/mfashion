import 'package:flutter/material.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_icon.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_button.dart';
import 'package:mfashion/core/widget/celestial_icon.dart';
import 'package:mfashion/core/widget/celestial_label.dart';

class MeasurementPage extends StatelessWidget {
  const MeasurementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (2 / 100) * SizeConfig.screenHeight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: (2 / 100) * SizeConfig.screenHeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              celestialLabel(
                  "WAIST", AppStyle.label10BlackBold, TextAlign.center),
              celestialLabel(
                  "LENGTH", AppStyle.label10BlackBold, TextAlign.center),
              celestialLabel(
                  "BREADTH", AppStyle.label10BlackBold, TextAlign.center)
            ],
          ),
          SizedBox(
            height: (2 / 100) * SizeConfig.screenHeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: (8 / 100) * SizeConfig.screenHeight,
                  width: (16 / 100) * SizeConfig.screenHeight,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: AppColor.greyColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: celestialLabel(
                        "43", AppStyle.label14BlackBold, TextAlign.right),
                  )),
              Container(
                  height: (8 / 100) * SizeConfig.screenHeight,
                  width: (16 / 100) * SizeConfig.screenHeight,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: AppColor.greyColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: celestialLabel(
                        "34", AppStyle.label14BlackBold, TextAlign.right),
                  )),
              Container(
                  height: (8 / 100) * SizeConfig.screenHeight,
                  width: (16 / 100) * SizeConfig.screenHeight,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: AppColor.greyColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: celestialLabel(
                        "76", AppStyle.label14BlackBold, TextAlign.right),
                  ))
            ],
          ),
          SizedBox(
            height: (2 / 100) * SizeConfig.screenHeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              celestialLabel(
                  "Color", AppStyle.label10BlackBold, TextAlign.left),
              SizedBox(
                width: (2 / 100) * SizeConfig.screenHeight,
              ),
              Expanded(
                child: Row(
                  children: [
                    celestialIcon(
                        AppIcon.ellipseIcon, AppColor.backgroundColor, true),
                    SizedBox(
                      width: (2 / 100) * SizeConfig.screenHeight,
                    ),
                    celestialIcon(
                        AppIcon.ellipseIcon, AppColor.pinkColor, true),
                    SizedBox(
                      width: (2 / 100) * SizeConfig.screenHeight,
                    ),
                    celestialIcon(AppIcon.ellipseIcon, AppColor.greyColor, true)
                  ],
                ),
              ),
              celestialLabel(
                "1",
                AppStyle.label10BlackBold,
                TextAlign.right,
              ),
              SizedBox(
                width: (2 / 100) * SizeConfig.screenHeight,
              ),
              celestialIcon(
                AppIcon.downIcon,
                AppColor.blackColor,
                true,
                (2 / 100) * SizeConfig.screenHeight,
              )
            ],
          ),
          SizedBox(
            height: (2 / 100) * SizeConfig.screenHeight,
          ),
          celestialLabel("Do you want to use this material",
              AppStyle.label18Black, TextAlign.left),
          SizedBox(
            height: (2 / 100) * SizeConfig.screenHeight,
          ),
          Row(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: AppColor.pinkColor,
                  ),
                  child: celestialButtonLabel(
                      () {}, "Yes", AppStyle.label10WhiteBold)),
              SizedBox(
                width: (2 / 100) * SizeConfig.screenHeight,
              ),
              Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: AppColor.whiteColor,
                  ),
                  child: celestialButtonLabel(
                      () {}, "No", AppStyle.label10BlackBold))
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              celestialLabelReadmore(
                  "Total ",
                  "25.99",
                  "",
                  AppStyle.label14BlackBold,
                  AppStyle.label14PinkBold,
                  TextAlign.left),
              Container(
                  height: (8 / 100) * SizeConfig.screenHeight,
                  width: (20 / 100) * SizeConfig.screenHeight,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: AppColor.pinkColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: celestialLabel("Add to bag",
                        AppStyle.label10BlackBold, TextAlign.center),
                  ))
            ],
          ),
          SizedBox(
            height: (2 / 100) * SizeConfig.screenHeight,
          ),
        ],
      ),
    );
  }
}
