import 'package:firebase_login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  /* -------------------------- Animation Controller -------------------------- */

  late final AnimationController _controller;

  /* -------------------------- Initialise Animation -------------------------- */

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);

    _controller.repeat();

    /* ------------------------- Change Screen Function ------------------------- */

    Future.delayed(const Duration(seconds: 4), (() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: ((context) => const LoginPage())));
    }));
  }

  /* ------------------ Dispose bg Process after exiting page ----------------- */

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child:
            Lottie.asset('assets/splashScreen.json', controller: _controller),
      ),
    );
  }
}
