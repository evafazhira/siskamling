import 'package:flutter/material.dart';
import 'package:siskamling/admin/data_warga.dart';
import 'package:siskamling/admin/arsip_laporan.dart';
import 'package:siskamling/admin/form_tambah_warga.dart';
import 'package:siskamling/admin/login.dart';
import 'package:siskamling/splashscreen.dart';
import 'package:siskamling/admin/dashboard.dart';
import 'package:siskamling/user/kebakaran.dart';
import 'package:siskamling/user/lapor.dart';
import 'package:siskamling/user/login_user.dart';
import 'package:siskamling/user/pencurian.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://olxmcwmfqylffckdvbmk.supabase.co',
    anonKey: 
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9seG1jd21mcXlsZmZja2R2Ym1rIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcyNzE3MjMsImV4cCI6MjAyMjg0NzcyM30.pjpUqC8daMRTOKUF7m28ZzJWrU9eYm-zHieayoDvnnY',
  );
  runApp(const MyApp());
}

class Supabase {
  static var instance;

  static initialize({required String url, required String anonKey}) {}
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siskamling',
      theme: ThemeData(),
      initialRoute: '/lapor',
      routes: {
        '/splashscreen': (context) => const SplashScreen (),
        '/login': (context) => const Login (),
        '/dashboard':(context) => const Dashboard(),
        '/data_warga':(context) => const DataWarga(),
        '/form_tambah_warga':(context) => TambahWarga(),
        '/arsip_laporan':(context) => const ArsipLaporan(),
        '/login_user':(context) => const LoginUser(),
        '/lapor':(context) => const Lapor(),
        '/pencurian':(context) => const Pencurian(),
        '/kebakaran':(context) => const Kebakaran(),
      },
    );
  }
}

