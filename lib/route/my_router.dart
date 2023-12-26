import 'package:connect_app/screens/login_screen.dart';
import 'package:connect_app/screens/register_screen.dart';
import 'package:connect_app/screens/splash_screen.dart';
import 'package:connect_app/screens/welcome_screen.dart';
import 'package:connect_app/utils/constants/route_constants.dart';
import 'package:get/get.dart';


class MyRouter{

   static List<GetPage> getRoutes(){
    return [
      GetPage(name: RouteConstants.splashScreenRoute, page: () => const SplashScreen()),
      GetPage(name: RouteConstants.welcomeScreenRoute, page: () => const WelcomeScreen()),//transitionDuration:  Duration(seconds: 1),transition:Transition.rightToLeft),
      GetPage(name: RouteConstants.loginScreenRoute, page: () => const LoginScreen(),transitionDuration: const Duration(milliseconds: 500),transition:Transition.rightToLeft),
      GetPage(name: RouteConstants.registerScreenRoute, page: () => const RegisterScreen(),transitionDuration: const Duration(milliseconds: 500),transition:Transition.rightToLeft),
    ];
  }

}