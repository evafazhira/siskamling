import 'package:flutter/material.dart';
import 'package:siskamling/login.dart';
import 'package:siskamling/splashscreen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: '/login',
      routes: {
        '/splashscreen': (context) => const SplashScreen (),
         '/login': (context) => const Login (),
      },
    );
  }
}

