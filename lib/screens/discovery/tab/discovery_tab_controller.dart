import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscoveryTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: 3);
    controller.addListener(() {
      print('my index is' + controller.index.toString());
    });
    // controller.addListener(_handleTabSelection);
  }

  void handleTabSelection() {
    controller.addListener(() {
      // print('my index is' + controller.index.toString());
    });
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
