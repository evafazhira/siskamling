import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() => Future.delayed(const Duration(seconds: 1), () {
    GetStorage box = GetStorage();
    bool isFirstOpen = box.read("isFirstOpen") ?? true;
    print(isFirstOpen);
    
    // Ganti '/lapor' dengan rute halaman yang ingin Anda arahkan pada saat splash screen.
    Get.offNamed(isFirstOpen ? '/login_user' : '/lapor');
  });
}
