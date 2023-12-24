import 'package:connect_app/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        elevation: 0.0,
        backgroundColor: ColorConstants.transparentColor,
        title:  Padding(
          padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.13),
          child: const Center(
            child: Image(
              image: AssetImage(
                "assets/images/logo.png"
              ),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Connect friends easily & quickly",
                maxLines: 6,
                style: TextStyle(
                  fontSize: 70,
                  fontFamily: "Cabin"
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                "Interact with individuals, spend time with loved ones.",
                maxLines: 2,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cabin"
                ),
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
                      child: Icon(Icons.facebook,color: Colors.white,),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const CircleAvatar(
                    child: CircleAvatar(
                      minRadius: 15,
                      backgroundColor: ColorConstants.blackColor,
                      child: Icon(FontAwesomeIcons.google,color: Colors.white,),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const CircleAvatar(
                    child: CircleAvatar(
                      minRadius: 15,
                      backgroundColor: ColorConstants.blackColor,
                      child: Icon(FontAwesomeIcons.apple,color: Colors.white,),
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
                    "------------------------------  OR  ------------------------------"
                  ),
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
                    onPressed: (){

                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.15,
                          right: MediaQuery.of(context).size.width * 0.15,
                          top: MediaQuery.of(context).size.height * 0.02,
                          bottom: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: const Text("Sign up with mail",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Cabin"
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
