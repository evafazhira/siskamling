import 'package:flutter/material.dart';
import 'package:siskamling/screens/admin/data_warga.dart';
import 'package:siskamling/screens/admin/arsip_laporan.dart';
import 'package:siskamling/screens/admin/form_tambah_warga.dart';
import 'package:siskamling/screens/admin/login_admin.dart';
import 'package:siskamling/splashscreen.dart';
import 'package:siskamling/screens/admin/dashboard.dart';
import 'package:siskamling/screens/user/kebakaran.dart';
import 'package:siskamling/screens/user/lapor.dart';
import 'package:siskamling/screens/user/login.dart';
import 'package:siskamling/screens/user/pencurian.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://olxmcwmfqylffckdvbmk.supabase.co',
    anonKey: 
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9seG1jd21mcXlsZmZja2R2Ym1rIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcyNzE3MjMsImV4cCI6MjAyMjg0NzcyM30.pjpUqC8daMRTOKUF7m28ZzJWrU9eYm-zHieayoDvnnY',
  );
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
        '/login': (context) => const Login(),
        '/dashboard':(context) => const Dashboard(),
        '/data_warga':(context) => const DataWarga(),
        '/form_tambah_warga':(context) => TambahWarga(),
        '/arsip_laporan':(context) => const ArsipLaporan(),
        '/login_admin':(context) => const LoginAdmin(),
        '/lapor':(context) => const Lapor(),
        '/pencurian':(context) => const Pencurian(),
        '/kebakaran':(context) => const Kebakaran(),
      },
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}