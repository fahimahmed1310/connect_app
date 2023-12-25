import 'package:connect_app/screens/splash_screen.dart';
import 'package:connect_app/screens/welcome_screen.dart';
import 'package:connect_app/utils/constants/route_constants.dart';
import 'package:get/get.dart';


class MyRouter{

   static List<GetPage> getRoutes(){
    return [
      GetPage(name: RouteConstants.splashScreenRoute, page: () => const SplashScreen()),
      GetPage(name: RouteConstants.welcomeScreenRoute, page: () => const WelcomeScreen())//transitionDuration:  Duration(seconds: 1),transition:Transition.rightToLeft),
    ];
  }

}