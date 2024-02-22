import 'package:get/get.dart';
import 'package:siskamling/screens/user/profile/controllers/profile_controllers.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.put((ProfileController));
  }
}