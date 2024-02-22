import 'package:get/get.dart';
import 'package:siskamling/screens/user/lapor/controllers/lapor_controllers.dart';

class LaporBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LaporController());
  }
}