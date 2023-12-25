import 'package:get/get.dart';

enum Pages{login, register}

class WelcomeScreenController extends GetxController{

  Pages? _pages = Pages.login;








  Pages get pages => _pages!;

  set pages(Pages value) {
    _pages = value;
    update();
  }


}