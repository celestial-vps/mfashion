import 'package:get/get.dart';
import 'package:mfashion/controllers/discovery_controller.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/controllers/home_controller.dart';

class DiscoveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalController>(() => GlobalController());
    Get.lazyPut<DiscoveryController>(() => DiscoveryController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
