import 'package:get/get.dart';
import 'package:mfashion/getxs/route_name.dart';

class CartController extends GetxController {
  goToPaymentSuccess() {
    Get.toNamed(RouteName.paymentSuccess);
  }
}
