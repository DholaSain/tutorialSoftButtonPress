import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagramtutorialpart2/UI/View/Home.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202226),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Lottie.asset('assets/loading-robot.json', width: 200),
        ),
      ),
    );
  }
}
