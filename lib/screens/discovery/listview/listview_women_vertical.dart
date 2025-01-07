import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/controllers/home_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_icon.dart';
import 'package:mfashion/core/misc/app_image.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_button.dart';
import 'package:mfashion/core/widget/celestial_icon.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';
import 'package:mfashion/models/product.dart';

Widget celestialListviewWomenVertical(
        GlobalController globalController,
        HomeController homeController,
        int itemCount,
        RxList<Product> products) =>
    Flexible(
      child: ListView.builder(
        controller: globalController.scrollController,
        itemCount: itemCount,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (2 / 100) * SizeConfig.screenHeight,
            ),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: AppColor.whiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (2 / 100) * SizeConfig.screenHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: (2 / 100) * SizeConfig.screenHeight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            celestialImageLocal(
                                AppImage.profile2,
                                (4 / 100) * SizeConfig.screenHeight,
                                (4 / 100) * SizeConfig.screenHeight),
                            SizedBox(
                              width: (2 / 100) * SizeConfig.screenHeight,
                            ),
                            Column(
                              children: [
                                celestialLabel("Sandy Williams",
                                    AppStyle.label14BlackBold, TextAlign.left),
                                celestialLabel("Freelance Tailor ",
                                    AppStyle.label11GreyBold, TextAlign.left)
                              ],
                            ),
                          ],
                        ),
                        celestialIcon(
                            AppIcon.loveIcon, AppColor.pinkColor, true),
                      ],
                    ),
                    SizedBox(
                      height: (2 / 100) * SizeConfig.screenHeight,
                    ),
                    celestialLabelReadmore(
                        "If you are looking for the latest and the most stylish Pakistan lawn collection 2018 with chiffon dupatta, you have come at the right place as Alkaram has brought fully embroidered lawn suits with chiffon and sleeves in its wide range of stitched and unstitched lawn suits",
                        "",
                        "",
                        AppStyle.label12BlackBold,
                        AppStyle.label12BlackBold,
                        TextAlign.left),
                    SizedBox(
                      height: (2 / 100) * SizeConfig.screenHeight,
                    ),
                    GestureDetector(
                      onTap: () {
                        homeController.goToMeasurement();
                      },
                      child: Row(
                        children: [
                          celestialImageLocal(
                              AppImage.product1,
                              (32 / 100) * SizeConfig.screenHeight,
                              (24 / 100) * SizeConfig.screenHeight),
                          SizedBox(
                            width: (2 / 100) * SizeConfig.screenHeight,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  celestialImageLocal(
                                      AppImage.product1,
                                      (16 / 100) * SizeConfig.screenHeight,
                                      (12 / 100) * SizeConfig.screenHeight),
                                  SizedBox(
                                      width:
                                          (1 / 100) * SizeConfig.screenHeight),
                                  celestialImageLocal(
                                      AppImage.product1,
                                      (16 / 100) * SizeConfig.screenHeight,
                                      (12 / 100) * SizeConfig.screenHeight),
                                ],
                              ),
                              SizedBox(
                                  height: (1 / 100) * SizeConfig.screenHeight),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  celestialImageLocal(
                                      AppImage.product1,
                                      (16 / 100) * SizeConfig.screenHeight,
                                      (12 / 100) * SizeConfig.screenHeight),
                                  SizedBox(
                                      width:
                                          (1 / 100) * SizeConfig.screenHeight),
                                  celestialImageLocal(
                                      AppImage.product1,
                                      (16 / 100) * SizeConfig.screenHeight,
                                      (12 / 100) * SizeConfig.screenHeight),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: (2 / 100) * SizeConfig.screenHeight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: (6 / 100) * SizeConfig.screenHeight,
                                  width: (16 / 100) * SizeConfig.screenHeight,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                    color: AppColor.pinkColor,
                                  ),
                                  child: celestialButtonLabel(
                                      () {}, "#Summer", AppStyle.label18White)),
                              SizedBox(
                                width: (2 / 100) * SizeConfig.screenHeight,
                              ),
                              Container(
                                  height: (6 / 100) * SizeConfig.screenHeight,
                                  width: (16 / 100) * SizeConfig.screenHeight,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                    color: AppColor.pinkColor,
                                  ),
                                  child: celestialButtonLabel(
                                      () {}, "#Purple", AppStyle.label18White)),
                            ],
                          ),
                        ),
                        celestialIcon(
                            AppIcon.sharedIcon, AppColor.greyColor, true),
                        SizedBox(
                          width: (2 / 100) * SizeConfig.screenHeight,
                        ),
                        celestialLabel(
                            "12k", AppStyle.label12Grey, TextAlign.left)
                      ],
                    ),
                    SizedBox(
                      height: (2 / 100) * SizeConfig.screenHeight,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
