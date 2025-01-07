import 'package:get/get.dart';
import 'package:mfashion/getxs/bindings/cart_binding.dart';
import 'package:mfashion/getxs/bindings/discovery_binding.dart';
import 'package:mfashion/getxs/bindings/home_binding.dart';
import 'package:mfashion/getxs/bindings/intro_binding.dart';
import 'package:mfashion/getxs/bindings/login_binding.dart';
import 'package:mfashion/getxs/bindings/measurement_binding.dart';
import 'package:mfashion/getxs/bindings/payment_success_binding.dart';
import 'package:mfashion/getxs/bindings/product_binding.dart';
import 'package:mfashion/screens/cart/cart_main_page.dart';
import 'package:mfashion/screens/discovery/discovery_main_page.dart';
import 'package:mfashion/screens/home/home_main_page.dart';
import 'package:mfashion/screens/intro/intro_main_page.dart';
import 'package:mfashion/screens/login/login_main_page.dart';
import 'package:mfashion/screens/measurement/measurement_main_page.dart';
import 'package:mfashion/screens/message/payment_success_page.dart';
import 'package:mfashion/screens/product/product_main_page.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: '/intro', page: () => IntroMainPage(), binding: IntroBinding()),
    GetPage(
        name: '/login',
        page: () => const LoginMainPage(),
        binding: LoginBinding()),
    GetPage(name: '/home', page: () => HomeMainPage(), binding: HomeBinding()),
    GetPage(
        name: '/discovery',
        page: () => DiscoveryMainPage(),
        binding: DiscoveryBinding()),
    GetPage(
        name: '/measurement',
        page: () => const MeasurementMainPage(),
        binding: MeasurementBinding()),
    GetPage(
        name: '/product',
        page: () => const ProductMainPage(),
        binding: ProductBinding()),
    GetPage(name: '/cart', page: () => CartMainPage(), binding: CartBinding()),
    GetPage(
        name: '/payment-success',
        page: () => PaymentSuccess(),
        binding: PaymentSuccessBinding()),
  ];
}
