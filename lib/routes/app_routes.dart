import 'package:get/get.dart';
import 'package:siskamling/screens/splash_screen/splashscreen.dart';
import 'package:siskamling/screens/splash_screen/bindings/splash_binding.dart';
import 'package:siskamling/screens/user/auth/bindings/auth_bindings.dart';
import 'package:siskamling/screens/user/lapor/bindings/lapor_bindings.dart';
import 'package:siskamling/screens/user/profile/bindings/profile_bindings.dart';
import 'package:siskamling/screens/user/auth/login.dart';
import 'package:siskamling/screens/user/auth/register.dart';
import 'package:siskamling/screens/user/lapor/lapor.dart';
import 'package:siskamling/screens/user/kebakaran/kebakaran.dart';
import 'package:siskamling/screens/user/pencurian/pencurian.dart';
import 'package:siskamling/screens/admin/dashboard.dart';
import 'package:siskamling/screens/admin/data_rumah/data_warga.dart';
import 'package:siskamling/screens/user/profile/user_profile.dart';
import 'package:siskamling/screens/user/test.dart';

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

    GetPage(
      name: '/lapor',
      page: () => Lapor(),
      binding: LaporBinding(),
    ),

    GetPage(
      name: '/profile',
      page: () => const UserProfile(),
      binding: ProfileBinding(),
    ),
    
    GetPage(name: '/register', page: () => Register(), binding: AuthBinding()),
    GetPage(name: '/pencurian', page: () => Pencurian()),
    GetPage(name: '/kebakaran', page: () => const Kebakaran()),
    GetPage(name: '/dashboard', page: () => const Dashboard()),
    GetPage(name: '/data_warga', page: () => const DataWarga()),
    GetPage(name: '/test', page: ()=> Test()),

  ];
}