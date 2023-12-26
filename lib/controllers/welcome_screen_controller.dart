import 'package:get/get.dart';

enum Pages{login, register, welcome}

class WelcomeScreenController extends GetxController{

  Pages? _pages = Pages.welcome;








  Pages get pages => _pages!;

  set pages(Pages value) {
    _pages = value;
    update();
  }


}