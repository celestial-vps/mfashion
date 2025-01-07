import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mfashion/controllers/home_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/app_icon.dart';
import 'package:mfashion/core/misc/enum.dart';
import 'package:mfashion/core/widget/celestial_label.dart';
import '../../misc/app_sytle.dart';

class NavBarHome extends StatelessWidget {
  const NavBarHome(
      {Key? key, required this.selectedMenu, required this.homeController})
      : super(key: key);

  final MenuStateEnum selectedMenu;
  final HomeController homeController;
  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = AppColor.whiteColor;
    return BottomAppBar(
      //bottom navigation bar on scaffold      ,
      color: AppColor.whiteColor,
      shape: const CircularNotchedRectangle(), //shape of notch
      notchMargin: 5, //notche margin between floating button and bottom appbar
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: AppColor.whiteColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    icon: SvgPicture.asset(
                      AppIcon.homeIcon,
                      color: MenuStateEnum.home == selectedMenu
                          ? AppColor.blackColor
                          : inActiveIconColor,
                    ),
                    onPressed: () => homeController.goToHome()),
                if (MenuStateEnum.home == selectedMenu)
                  celestialLabel("Home", AppStyle.label8White, TextAlign.left)
              ],
            ),
            IconButton(
              icon: SvgPicture.asset(AppIcon.bagIcon),
              onPressed: () {
                homeController.goToCart();
              },
            ),
            IconButton(
              icon: SvgPicture.asset(AppIcon.settingIcon),
              onPressed: () {
                // homeController.goToTicket();
              },
            ),
            IconButton(
              icon: SvgPicture.asset(AppIcon.plusIcon),
              onPressed: () {
                // homeController.goToTicket();
              },
            ),
          ],
        ),
      ),
    );
  }
}
