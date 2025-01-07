import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';
import 'package:mfashion/models/product.dart';

Widget listviewCartVertical(GlobalController globalController, int itemCount,
        RxList<Product> products) =>
    SizedBox(
      height: (10 / 100) * SizeConfig.screenHeight,
      child: ListView.builder(
        controller: globalController.scrollController,
        itemCount: itemCount,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (2 / 100) * SizeConfig.screenHeight,
                vertical: (2 / 100) * SizeConfig.screenHeight),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: AppColor.whiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (2 / 100) * SizeConfig.screenHeight,
                    vertical: (2 / 100) * SizeConfig.screenHeight),
                child: Column(
                  children: [
                    SizedBox(
                      height: (2 / 100) * SizeConfig.screenHeight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        celestialImageLocal(
                            products[index].imageFile.toString(),
                            (12 / 100) * SizeConfig.screenHeight,
                            (12 / 100) * SizeConfig.screenHeight),
                        SizedBox(
                          width: (2 / 100) * SizeConfig.screenHeight,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              celestialLabel(
                                  products[index].productName.toString(),
                                  AppStyle.label14BlackBold,
                                  TextAlign.left),
                              celestialLabel(
                                  products[index].description.toString(),
                                  AppStyle.label9GreyBold,
                                  TextAlign.left)
                            ],
                          ),
                        ),
                        celestialLabel(products[index].normalPrice.toString(),
                            AppStyle.label14PinkBold, TextAlign.right)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
