import 'package:get/get.dart';
import 'package:mfashion/getxs/route_name.dart';

class IntroController extends GetxController {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "no": "1",
      "model": "Jenifer Kingsley",
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/intro1.png"
    },
    {
      "no": "2",
      "model": "Jimmy Chuka",
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/intro2.png"
    },
    {
      "no": "3",
      "model": "Christain Lobi",
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/intro3.png"
    },
  ];

  goToHome() {
    Get.toNamed(RouteName.home);
  }
}
