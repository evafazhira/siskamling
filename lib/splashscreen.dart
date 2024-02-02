import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(3),
        child: const Image(
          image: AssetImage('assets/images/logo.jpeg'),
          fit: BoxFit.contain,
        ),
      )),
    );
  }
}