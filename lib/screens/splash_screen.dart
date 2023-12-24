import 'dart:async';

import 'package:connect_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  AnimationController? animationController;
  Animation? animation;


  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds:5));
    animation = ColorTween(begin: Colors.blue , end: Colors.white).animate(animationController!);

    animationController!.forward();

    animationController!.addListener(() {
      setState(() {

      });
    });


    Timer(const Duration(seconds: 5), () {
      Get.to(
        WelcomeScreen(), //next page class
        duration: const Duration(seconds: 1),
        //duration of transitions, default 1 sec
        transition: Transition.rightToLeft,
        //transition effect
      );
    });

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation!.value,
      body: const Center(
        child: Image(
          image: AssetImage("assets/images/logo.png"),
        ),
      ),
    );
  }
}
