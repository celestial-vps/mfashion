import 'package:get/get.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/controllers/home_controller.dart';
import 'package:mfashion/controllers/product_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalController>(() => GlobalController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProductController>(() => ProductController());
  }
}
