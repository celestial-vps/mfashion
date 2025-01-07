import 'package:get/get.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalController>(() => GlobalController());
    Get.lazyPut<ProductController>(() => ProductController());
  }
}
