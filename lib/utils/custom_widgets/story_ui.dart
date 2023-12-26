import 'package:connect_app/controllers/home_screen_controller.dart';
import 'package:connect_app/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryUI extends StatelessWidget {

  int? index;

  StoryUI({required this.index});

  @override
  Widget build(BuildContext context) {

    HomeScreenController homeScreenController = Get.find();

    return GetBuilder<HomeScreenController>(
      builder: (_){
        return Column(
          children: [
            index == 0 ?
            Column(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: ColorConstants.blackColor,
                      child: CircleAvatar(
                        radius:29,
                        foregroundImage: AssetImage(
                            "assets/images/user.jpg"
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 0.1,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 11,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: ColorConstants.whiteColor,
                          child: Center(child: Icon(Icons.add, color: ColorConstants.blackColor,size: 15,)),
                        ),
                      ),
                    ),


                  ],
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.008
                ),
                const Text("My Story",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cabin"
                ),),
              ],
            )
            : Column(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: ColorConstants.blackColor,
                  child: CircleAvatar(
                    radius:29,
                    foregroundImage: AssetImage(
                        "assets/images/user.jpg"
                    ),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.008
                ),
                const Text("My Story",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cabin"
                ),),
              ],
            ),

          ],
        );
      },

    );
  }
}