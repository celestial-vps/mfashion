import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/controllers/discovery_controller.dart';
import 'package:mfashion/controllers/home_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_icon.dart';
import 'package:mfashion/core/misc/app_image.dart';
import 'package:mfashion/core/misc/app_sytle.dart';
import 'package:mfashion/core/misc/enum.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_icon.dart';
import 'package:mfashion/core/widget/celestial_image.dart';
import 'package:mfashion/core/widget/celestial_label.dart';
import 'package:mfashion/core/widget/navbar/navbar_home.dart';
import 'package:mfashion/screens/discovery/tab/tab_bar_home.dart';

class DiscoveryMainPage extends StatelessWidget {
  DiscoveryMainPage({Key? key}) : super(key: key);
  final discoveryController = Get.put(DiscoveryController());
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: (2 / 100) * SizeConfig.screenHeight,
                  horizontal: (2 / 100) * SizeConfig.screenHeight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: (2 / 100) * SizeConfig.screenHeight),
                  Expanded(
                    child: celestialLabel(
                        "Discovery", AppStyle.label35BlackBold, TextAlign.left),
                  ),
                  celestialIcon(AppIcon.searchIcon, AppColor.blackColor, true),
                  celestialImageLocal(
                      AppImage.profile1,
                      (4 / 100) * SizeConfig.screenHeight,
                      (4 / 100) * SizeConfig.screenHeight),
                ],
              ),
            ),
            Flexible(child: TabBarDiscovery()),
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
