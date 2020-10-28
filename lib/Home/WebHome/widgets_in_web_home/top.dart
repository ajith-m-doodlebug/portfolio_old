import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../color.dart';
import '../../../Menu/menu.dart';

class SetOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              right: 30,
            ),
            child: Hero(
              tag: 'doodle',
              transitionOnUserGestures: true,
              child: Material(
                type: MaterialType.transparency,
                child: Text(
                  'Doodlebug',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'RobotoRegular',
                  ),
                ),
              ),
            ),
          ),
          Hero(
            tag: 'top box',
            child: Container(
              margin: EdgeInsets.only(left: 30),
              height: 130.0,
              width: 200,
              decoration: BoxDecoration(
                color: kSecondColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(1, 1),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeButton extends StatefulWidget {
  @override
  _HomeButtonState createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  bool hover = true;
  Color color;
  List<BoxShadow> shadow = [
    BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 3)
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      bool mobile =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? true
              : false;
      double squareSize = mobile ? 20 : 20;
      double spaceBetween = mobile ? 30 : 40;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 25,
            ),
            height: squareSize,
            width: squareSize,
            decoration: BoxDecoration(
              color: kSecondColor,
              //borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            width: spaceBetween,
          ),
          InkWell(
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onHover: (bool isHover) {
              if (isHover) {
                setState(() {
                  hover = false;
                });
              } else {
                setState(() {
                  hover = true;
                });
              }
            },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WebOrMobileMenu();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 25,
              ),
              height: squareSize,
              width: squareSize,
              decoration: BoxDecoration(
                color: kSecondColor,
                boxShadow: hover ? shadow : null,
              ),
            ),
          ),
        ],
      );
    });
  }
}
