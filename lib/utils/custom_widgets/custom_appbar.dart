import 'package:connect_app/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{


  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      elevation: 0.0,
      backgroundColor: ColorConstants.transparentColor,
      title: const Padding(
        padding: EdgeInsets.only(top:20.0),
        child: Icon(
          FontAwesomeIcons.message,
          color: Colors.black,
          size: 50,
        ),
      ),
      centerTitle: true,

    );
  }
}