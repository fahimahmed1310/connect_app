import 'package:connect_app/route/my_router.dart';
import 'package:connect_app/screens/splash_screen.dart';
import 'package:connect_app/utils/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ConnectApp());
}
class ConnectApp extends StatelessWidget {
  const ConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstants.splashScreenRoute,
      getPages: MyRouter.getRoutes(),
    );
  }
}



