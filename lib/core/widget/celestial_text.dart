import 'package:flutter/material.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/core/widget/celestial_icon.dart';

Widget celestialNormalText(TextEditingController textController, Color color,
        String title, TextStyle labelText) =>
    TextField(
      controller: textController,
      cursorColor: AppColor.blackColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.greyColor,
        contentPadding: const EdgeInsets.all(10.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey.shade200,
              width: (2 / 1000) * SizeConfig.screenHeight),
          borderRadius:
              BorderRadius.circular((10 / 1000) * SizeConfig.screenWidth),
        ),
      ),
    );

// Widget celestialTextRightIcon(
//         GlobalController controller,
//         TextEditingController textController,
//         String title,
//         TextStyle labelText) =>
//     Obx(() => TextField(
//           controller: textController,
//           obscureText: controller.iconsax.value,
//           cursorColor: AppColor.blackColor,
//           decoration: InputDecoration(
//             filled: true,
//             fillColor: AppColor.greyColor,
//             contentPadding: const EdgeInsets.all(10.0),
//             suffixIcon: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: GestureDetector(
//                 onTap: () {
//                   if (controller.visibleIcon.value == 0) {
//                     controller.iconsax.value = false;
//                     controller.visibleIcon.value = 1;
//                   } else {
//                     controller.iconsax.value = true;
//                     controller.visibleIcon.value = 0;
//                   }
//                 },
//                 child: Obx(() {
//                   if (controller.visibleIcon.value == 0) {
//                     return SvgPicture.asset(
//                       AppIcon.visibilityOff,
//                       color: AppColor.inActiveIconColor,
//                       width: (2 / 1000) * SizeConfig.screenWidth,
//                       height: (2 / 1000) * SizeConfig.screenHeight,
//                     );
//                   } else {
//                     return SvgPicture.asset(
//                       AppIcon.visibility,
//                       color: AppColor.inActiveIconColor,
//                       width: (2 / 1000) * SizeConfig.screenWidth,
//                       height: (2 / 1000) * SizeConfig.screenHeight,
//                     );
//                   }
//                 }),
//               ),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Colors.grey.shade200,
//                   width: (2 / 1000) * SizeConfig.screenHeight),
//               borderRadius:
//                   BorderRadius.circular((10 / 1000) * SizeConfig.screenWidth),
//             ),
//           ),
//         ));

Widget celestialTextLeftIcon(
        GlobalController controller,
        TextEditingController textController,
        String title,
        TextStyle labelText) =>
    TextField(
      controller: textController,
      obscureText: controller.iconsax.value,
      cursorColor: AppColor.blackColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.greyColor,
        contentPadding: const EdgeInsets.all(10.0),
        prefixIcon: CelestialIconSax(
          iconsax: Icons.search,
          size: (2.6 / 100) * SizeConfig.screenHeight,
          tint: AppColor.whiteColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey.shade200,
              width: (2 / 1000) * SizeConfig.screenHeight),
          borderRadius:
              BorderRadius.circular((10 / 1000) * SizeConfig.screenWidth),
        ),
      ),
    );
