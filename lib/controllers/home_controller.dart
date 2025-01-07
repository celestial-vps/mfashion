import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfashion/getxs/route_name.dart';

class HomeController extends GetxController {
  TextEditingController searchText = TextEditingController(text: '');

  goToHome() {
    Get.toNamed(RouteName.home);
  }

  goToMeasurement() {
    Get.toNamed(RouteName.measurement);
  }

  goToCart() {
    Get.toNamed(RouteName.cart);
  }
}
