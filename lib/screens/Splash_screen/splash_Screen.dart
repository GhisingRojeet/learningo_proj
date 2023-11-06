import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learningo/screens/onboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final imageUrl = "https://1000logos.net/wp-content/uploads/2020/10/Duolingo-logo.png";
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        color: Colors.cyan[200],
        
        child: Center(
          child: Image.network(imageUrl)
          
           ),
      ),
    );
  }
}
