import 'package:get/get.dart';
import 'package:siskamling/screens/splash_screen/splashscreen.dart';
import 'package:siskamling/screens/splash_screen/bindings/splash_binding.dart';
import 'package:siskamling/screens/user/auth/bindings/auth_bindings.dart';
import 'package:siskamling/screens/user/auth/login.dart';
import 'package:siskamling/screens/user/auth/register.dart';
import 'package:siskamling/screens/user/lapor/lapor.dart';
import 'package:siskamling/screens/user/kebakaran/kebakaran.dart';
import 'package:siskamling/screens/user/pencurian/pencurian.dart';
import 'package:siskamling/screens/admin/dashboard.dart';
import 'package:siskamling/screens/admin/data_warga.dart';
import 'package:siskamling/screens/admin/form_detail_rumah.dart';

class AppRoutes {
  static const initial = "/splash_screen";

  static final routes = [
    GetPage(
      name: '/splash_screen',
      page: () => const SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/login',
      page: () => Login(),
      binding: AuthBinding(),
    ),
    
    GetPage(name: '/register', page: () => Register(), binding: AuthBinding()),
    GetPage(name: '/lapor', page: () => const Lapor()),
    GetPage(name: '/pencurian', page: () => const Pencurian()),
    GetPage(name: '/kebakaran', page: () => const Kebakaran()),
    GetPage(name: '/dashboard', page: () => const Dashboard()),
    GetPage(name: '/data_warga', page: () => const DataWarga()),

  ];
}