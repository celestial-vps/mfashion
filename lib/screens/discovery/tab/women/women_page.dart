import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/controllers/home_controller.dart';
import 'package:mfashion/controllers/product_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/screens/discovery/listview/listview_women_vertical.dart';

class WomenPage extends StatelessWidget {
  WomenPage({Key? key}) : super(key: key);
  final productController = Get.find<ProductController>();
  final homeController = Get.find<HomeController>();
  final globalController = Get.find<GlobalController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: (2 / 100) * SizeConfig.screenHeight,
          ),
          celestialListviewWomenVertical(
            globalController,
            homeController,
            productController.productWomens.length,
            productController.productWomens,
          ),
        ],
      ),
    );
  }
}
