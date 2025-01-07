import 'package:get/get.dart';
import 'package:mfashion/controllers/cart_controller.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/controllers/home_controller.dart';
import 'package:mfashion/controllers/product_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalController>(() => GlobalController());
    Get.lazyPut<CartController>(() => CartController());
    Get.lazyPut<ProductController>(() => ProductController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
