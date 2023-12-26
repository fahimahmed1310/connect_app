import 'package:connect_app/controllers/welcome_screen_controller.dart';
import 'package:connect_app/utils/constants/route_constants.dart';
import 'package:get/get.dart';

WelcomeScreenController welcomeScreenController = Get.find();

void tapGestureActions(){

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

}