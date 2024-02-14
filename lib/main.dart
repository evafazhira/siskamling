import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:siskamling/common/bindings/app_bindings.dart';
import 'package:siskamling/routes/app_routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://bvxypsiekzyepdvfohfz.supabase.co',
    anonKey: 
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ2eHlwc2lla3p5ZXBkdmZvaGZ6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc2NTQ3NDUsImV4cCI6MjAyMzIzMDc0NX0.b6gGgM-wWBYgZ9v69wzF_I4a891BsAqYK_OXzuB1cT8',
  );
  await GetStorage.init();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siskamling',
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.initial,
      initialBinding: AppBinding(),
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Get.defaultTransitionDuration,
    );
  }
}