import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/core/misc/app_color.dart';
import 'package:mfashion/core/misc/size_config.dart';
import 'package:mfashion/screens/discovery/tab/discovery_tab_controller.dart';
import 'package:mfashion/screens/discovery/tab/women/children_page.dart';
import 'package:mfashion/screens/discovery/tab/women/men_page.dart';
import 'package:mfashion/screens/discovery/tab/women/women_page.dart';

class TabBarDiscovery extends StatelessWidget {
  TabBarDiscovery({Key? key}) : super(key: key);
  final DiscoveryTabController tabController =
      Get.put(DiscoveryTabController());

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
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: AppColor.blackColor,
              indicatorColor: AppColor.greenColor,
              unselectedLabelColor: AppColor.greyColor,
              // unselectedLabelStyle: AppStyle.labelselected,
              tabs: const [
                Tab(
                  text: "Women",
                ),
                Tab(
                  text: "Men",
                ),
                Tab(
                  text: "Children",
                ),
              ],
            )),
        body: TabBarView(
          controller: tabController.controller,
          children: [
            WomenPage(),
            const MenPage(),
            const ChildrenPage(),
          ],
        ),
      ),
    );
  }
}
