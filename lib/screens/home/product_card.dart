import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';
import 'package:mfashion/getxs/route_name.dart';
import 'package:mfashion/models/product.dart';

Widget productCard(RxList<Product> products, int index) => Card(
        child: InkWell(
      onTap: () {
        Get.toNamed(RouteName.cart, arguments: [
          {"product": products[index]}
        ]);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          celestialImageLocal(
              products[index].imageFile.toString(),
              (30 / 100) * SizeConfig.screenHeight,
              (30 / 100) * SizeConfig.screenWidth),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (2 / 100) * SizeConfig.screenHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                celestialLabel(products[index].normalPrice.toString(),
                    AppStyle.label14PinkBold, TextAlign.center),
                celestialLabel(products[index].productName.toString(),
                    AppStyle.label14BlackBold, TextAlign.center)
              ],
            ),
          ),
        ],
      ),
    ));
