import 'package:connect_app/controllers/welcome_screen_controller.dart';
import 'package:connect_app/utils/constants/color_constants.dart';
import 'package:connect_app/utils/constants/route_constants.dart';
import 'package:connect_app/utils/custom_widgets/custom_appbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../utils/custom_methods/tap_gesture_action.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WelcomeScreenController welcomeScreenController = Get.find();

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Connect friends easily & quickly",
                maxLines: 6,
                style: TextStyle(fontSize: 70, fontFamily: "Cabin"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                "Interact with peoples, spend time with loved ones.",
                maxLines: 2,
                style: TextStyle(fontSize: 20, fontFamily: "Cabin"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    child: CircleAvatar(
                      minRadius: 15,
                      backgroundColor: ColorConstants.blackColor,
                      child: Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const CircleAvatar(
                    child: CircleAvatar(
                      minRadius: 15,
                      backgroundColor: ColorConstants.blackColor,
                      child: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const CircleAvatar(
                    child: CircleAvatar(
                      minRadius: 15,
                      backgroundColor: ColorConstants.blackColor,
                      child: Icon(
                        FontAwesomeIcons.apple,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.04,
                  // ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      "------------------------------  OR  ------------------------------"),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          // Change your radius here
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(
                        RouteConstants.loginScreenRoute,
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.15,
                        right: MediaQuery.of(context).size.width * 0.15,
                        top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: const Text(
                        "Sign up with mail",
                        style: TextStyle(fontSize: 18, fontFamily: "Cabin"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Don't have any account?",
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: "Cabin",
                          color: ColorConstants.blackColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: " Register",
                            style: const TextStyle(
                                fontFamily: "Cabin",
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                tapGestureActions();
                              }),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
