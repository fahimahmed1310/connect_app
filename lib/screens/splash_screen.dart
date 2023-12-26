import 'dart:async';

import 'package:connect_app/screens/welcome_screen.dart';
import 'package:connect_app/utils/constants/app_constants.dart';
import 'package:connect_app/utils/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      Get.offAndToNamed(
        RouteConstants.homeScreenRoute,
      );
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController!.dispose();
    super.dispose();

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation!.value,
      body: const Center(
        child: Icon(
            FontAwesomeIcons.message,
          size: 80,
        ),
      ),
    );
  }
}
