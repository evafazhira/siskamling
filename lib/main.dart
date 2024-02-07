import 'package:flutter/material.dart';
import 'package:siskamling/admin/data_warga.dart';
import 'package:siskamling/admin/arsip_laporan.dart';
import 'package:siskamling/admin/login.dart';
import 'package:siskamling/splashscreen.dart';
import 'package:siskamling/admin/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siskamling',
      theme: ThemeData(),
      initialRoute: '/login',
      routes: {
        '/splashscreen': (context) => const SplashScreen (),
        '/login': (context) => const Login (),
        '/dashboard':(context) => const Dashboard(),
        '/data_warga':(context) => const DataWarga(),
        '/arsip_laporan':(context) => const ArsipLaporan(),
      },
    );
  }
}

