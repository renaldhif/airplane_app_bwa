import 'package:flutter/material.dart';
import 'package:airplane_app_bwa/ui/pages/splash_page.dart';
import 'package:airplane_app_bwa/ui/pages/get_started_page.dart';
import 'package:airplane_app_bwa/ui/pages/sign_up_page.dart';
import 'package:airplane_app_bwa/ui/pages/bonus_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
      },
    );
  }
}