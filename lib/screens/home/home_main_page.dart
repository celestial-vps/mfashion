import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/controllers/home_controller.dart';
import 'package:mfashion/controllers/product_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_image.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/enum.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';
import 'package:mfashion/core/widget/celestial_text.dart';
import 'package:mfashion/core/widget/navbar/navbar_home.dart';
import 'package:mfashion/screens/home/product_grid.dart';

class HomeMainPage extends StatelessWidget {
  HomeMainPage({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());
  final globalController = Get.put(GlobalController());
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(
          children: [
            Container(
              color: AppColor.whiteColor,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (2 / 100) * SizeConfig.screenHeight,
                    vertical: (2 / 100) * SizeConfig.screenHeight),
                child: Row(
                  children: [
                    Expanded(
                      child: celestialTextLeftIcon(
                          globalController,
                          homeController.searchText,
                          "Search",
                          AppStyle.label10BlackBold),
                    ),
                    SizedBox(
                      width: (2 / 100) * SizeConfig.screenHeight,
                    ),
                    celestialImageLocal(
                        AppImage.profile1,
                        (4 / 100) * SizeConfig.screenHeight,
                        (4 / 100) * SizeConfig.screenHeight)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: (1 / 100) * SizeConfig.screenHeight,
            ),
            celestialLabel("5182 Items found for “Top”",
                AppStyle.label14BGreyBold, TextAlign.center),
            SizedBox(
              height: (1 / 100) * SizeConfig.screenHeight,
            ),
            Flexible(
              child: ProductGrid(
                axisCount: 2,
                products: productController.products,
              ),
            )
          ],
        ),
        bottomNavigationBar: NavBarHome(
          selectedMenu: MenuStateEnum.home,
          homeController: homeController,
        ),
      ),
    );
  }
}
