import 'package:flutter/material.dart';
import 'package:siskamling/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.all(3),
        child: Image(
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.contain,
        ),
      )),
    );
  }
}