import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _timer();
    super.initState();
  }

  Timer _timer() {
    return Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff10579B),
            Color(0xff3AA4C8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 10,
                right: 10,
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    'assets/images/splash/map.png',
                    width: 450,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/splash/logo.png',
                    width: 286,
                    height: 90,
                  ),
                  const SizedBox(height: 100),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/splash/clouds.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
