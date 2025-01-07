import 'package:get/get.dart';
import 'package:mfashion/controllers/global_controller.dart';
import 'package:mfashion/controllers/measurement_controller.dart';

class MeasurementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalController>(() => GlobalController());
    Get.lazyPut<MeasurementController>(() => MeasurementController());
  }
}
