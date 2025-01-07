import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/screens/measurement/tab/measurement/measurement_page.dart';
import 'package:mfashion/screens/measurement/tab/measurement_tab_controller.dart';
import 'package:mfashion/screens/product/info/info_page.dart';

class TabBarMeasurement extends StatelessWidget {
  TabBarMeasurement({Key? key}) : super(key: key);
  final MeasurementTabController tabController =
      Get.put(MeasurementTabController());

  @override
  Widget build(BuildContext context) {
    // ↑ init tab controller

    return DefaultTabController(
      length: tabController.controller.length,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            toolbarHeight: (2 / 100) * SizeConfig.screenHeight,
            backgroundColor: AppColor.whiteColor,
            automaticallyImplyLeading: false,
            bottom:
                // Obx(() => Text('ss'))
                TabBar(
              onTap: (int index) {},
              controller: tabController.controller,
              isScrollable: true,
              indicatorWeight: 2,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: AppColor.blackColor,
              indicatorColor: AppColor.greenColor,
              unselectedLabelColor: AppColor.greyColor,
              // unselectedLabelStyle: AppStyle.labelselected,
              tabs: const [
                Tab(
                  text: "Info",
                ),
                Tab(
                  text: "Measurement",
                ),
              ],
            )),
        body: TabBarView(
          controller: tabController.controller,
          children: const [
            InfoPage(),
            MeasurementPage(),
          ],
        ),
      ),
    );
  }
}
