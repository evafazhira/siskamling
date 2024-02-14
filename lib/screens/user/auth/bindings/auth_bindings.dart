import 'package:get/get.dart';
import 'package:siskamling/screens/user/auth/controllers/auth_controllers.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}