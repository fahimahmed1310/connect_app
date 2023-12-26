import 'package:connect_app/controllers/welcome_screen_controller.dart';
import 'package:connect_app/utils/constants/color_constants.dart';
import 'package:connect_app/utils/constants/route_constants.dart';
import 'package:connect_app/utils/custom_widgets/custom_appbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WelcomeScreenController welcomeScreenController = Get.find();

    return GetBuilder<WelcomeScreenController>(
      builder: (_) {
        return Scaffold(
          appBar: CustomAppBar(),
          body: SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Text(
                          "Log IN".toUpperCase(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              fontFamily: "Cabin"),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ),
                      Text(
                        "Enter your login details below!",
                        style: TextStyle(fontSize: 15, fontFamily: "Cabin"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(
                              fontFamily: "Cabin",
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter your mail",
                            hintStyle: const TextStyle(fontFamily: "Cabin"),
                            prefixIcon: const Icon(
                              FontAwesomeIcons.envelope,
                              color: ColorConstants.blackColor,
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.blackColor,
                                width: 2,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: ColorConstants.blackColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        const Text(
                          "Password",
                          style: TextStyle(
                              fontFamily: "Cabin",
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            hintStyle: const TextStyle(fontFamily: "Cabin"),
                            prefixIcon: const Icon(
                              FontAwesomeIcons.key,
                              color: ColorConstants.blackColor,
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.blackColor,
                                width: 2,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: ColorConstants.blackColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(fontFamily: "Cabin", fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.1,
                                right: MediaQuery.of(context).size.width * 0.1,
                                top: MediaQuery.of(context).size.width * 0.04,
                                bottom:
                                    MediaQuery.of(context).size.width * 0.04,
                              ),
                              child: Text(
                                "Login".toUpperCase(),
                                style: const TextStyle(
                                    fontFamily: "Cabin",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              text: "Don't have any account?",
                              style: TextStyle(
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
                                        if (welcomeScreenController.pages ==
                                            Pages.welcome) {
                                          welcomeScreenController.pages = Pages.register;
                                          Get.toNamed(
                                            RouteConstants.registerScreenRoute,
                                          );
                                        }else if(welcomeScreenController.pages == Pages.login){
                                          welcomeScreenController.pages = Pages.register;
                                          Get.toNamed(
                                            RouteConstants.registerScreenRoute,
                                          );
                                        }else{
                                          welcomeScreenController.pages = Pages.login;
                                          Get.toNamed(
                                            RouteConstants.loginScreenRoute,
                                          );
                                        }
                                      }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
