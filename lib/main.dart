import 'package:connect_app/route/my_router.dart';
import 'package:connect_app/screens/splash_screen.dart';
import 'package:connect_app/utils/constants/color_constants.dart';
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
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(ColorConstants.blackColor)
            )
        ), // Here Im having the error
      ),
      initialRoute: RouteConstants.splashScreenRoute,
      getPages: MyRouter.getRoutes(),
    );
  }
}
