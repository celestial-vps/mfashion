import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/controllers/cart_controller.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/controllers/home_controller.dart';
import 'package:mfashion/controllers/product_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_icon.dart';
import 'package:mfashion/core/misc/app_image.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/enum.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_button.dart';
import 'package:mfashion/core/widget/celestial_icon.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';
import 'package:mfashion/core/widget/navbar/navbar_home.dart';
import 'package:mfashion/screens/cart/cart_listview_vertical.dart';

class CartMainPage extends StatelessWidget {
  CartMainPage({Key? key}) : super(key: key);
  final cartController = Get.find<CartController>();
  final globalController = Get.find<GlobalController>();
  final productController = Get.find<ProductController>();
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(children: [
          Container(
            color: AppColor.whiteColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (2 / 100) * SizeConfig.screenHeight,
                  vertical: (2 / 100) * SizeConfig.screenHeight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: celestialLabel(
                          "Cart", AppStyle.label35BlackBold, TextAlign.left)),
                  SizedBox(
                    width: (2 / 100) * SizeConfig.screenHeight,
                  ),
                  celestialIcon(AppIcon.searchIcon, AppColor.blackColor, true),
                  SizedBox(
                    width: (2 / 100) * SizeConfig.screenHeight,
                  ),
                  celestialImageLocal(
                      AppImage.profile1,
                      (4 / 100) * SizeConfig.screenHeight,
                      (4 / 100) * SizeConfig.screenHeight),
                ],
              ),
            ),
          ),
          SizedBox(
            height: (2 / 100) * SizeConfig.screenHeight,
          ),
          Expanded(
              child: listviewCartVertical(
            globalController,
            productController.products.length,
            productController.products,
          )),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (2 / 100) * SizeConfig.screenHeight,
              vertical: (2 / 100) * SizeConfig.screenHeight,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      celestialLabel(
                          "Total", AppStyle.label17GreyBold, TextAlign.left),
                      celestialLabel(
                          "25.99", AppStyle.label22PinkBold, TextAlign.left),
                    ],
                  ),
                ),
                Container(
                    height: (8 / 100) * SizeConfig.screenHeight,
                    width: (16 / 100) * SizeConfig.screenHeight,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: AppColor.pinkColor,
                    ),
                    child: celestialButtonLabel(() {
                      cartController.goToPaymentSuccess();
                    }, "Pay Now", AppStyle.label14BWhiteBold))
              ],
            ),
          ),
        ]),
        bottomNavigationBar: NavBarHome(
          selectedMenu: MenuStateEnum.bag,
          homeController: homeController,
        ),
      ),
    );
  }
}
