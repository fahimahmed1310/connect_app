import 'package:connect_app/controllers/home_screen_controller.dart';
import 'package:connect_app/controllers/welcome_screen_controller.dart';
import 'package:get/get.dart';

class InitDependency extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeScreenController() );
    Get.lazyPut(() => HomeScreenController() );
  }

}