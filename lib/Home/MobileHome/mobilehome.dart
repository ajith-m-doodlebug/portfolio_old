import 'package:flutter/material.dart';
import 'package:fluttertry/Home/MobileHome/widgets_in_mobile_home/whole_home.dart';
import 'package:fluttertry/color.dart';

class MobileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DoodleAndButtonMobile(),
          NameAndAboutMobile(),
          WelcomeMobile(),
        ],
      ),
    );
  }
}
