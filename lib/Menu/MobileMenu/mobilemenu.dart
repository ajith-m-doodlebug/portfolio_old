import 'package:flutter/material.dart';
import 'package:fluttertry/Menu/MobileMenu/widgets_in_mobile_menu/bottomMenu.dart';
import 'package:fluttertry/Menu/MobileMenu/widgets_in_mobile_menu/middleMenu.dart';
import 'package:fluttertry/Menu/MobileMenu/widgets_in_mobile_menu/topMenu.dart';

import '../../color.dart';

class MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 400.0,
            color: kMainColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DoodleAndButtonMobileMenu(),
                NameMobile(),
                QuoteMobile(),
              ],
            ),
          ),
          Projects(),
          Resume(),
        ],
      ),
    );
  }
}
