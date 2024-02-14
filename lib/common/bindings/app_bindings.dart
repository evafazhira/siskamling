import 'package:get/get.dart';
import 'package:siskamling/common/controllers/app_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}