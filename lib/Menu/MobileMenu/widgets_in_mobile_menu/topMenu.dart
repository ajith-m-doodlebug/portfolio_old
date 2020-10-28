import 'package:flutter/material.dart';
import 'package:fluttertry/Home/WebHome/widgets_in_web_home/middle.dart';

import 'package:responsive_builder/responsive_builder.dart';

import '../../../color.dart';

class DoodleAndButtonMobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double fontSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 15
                : 20;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Hero(
                tag: 'doodle mobile',
                transitionOnUserGestures: true,
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    'Doodlebug',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize,
                      fontFamily: 'RobotoRegular',
                    ),
                  ),
                ),
              ),
            ),
            MobileMenuButton(),
          ],
        );
      },
    );
  }
}

class NameMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool mobile =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? true
                : false;
        return Hero(
          tag: 'name mobile',
          flightShuttleBuilder: flightShuttleBuilder,
          placeholderBuilder: (context, size, widget) {
            return Container(
              color: kMainColor,
              height: size.height,
              width: size.width,
            );
          },
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              margin: EdgeInsets.only(top: mobile ? 30 : 40),
              child: Text(
                'Ajith M',
                style: TextStyle(
                  fontSize: mobile ? 50 : 60,
                  color: kSecondColor,
                  fontFamily: 'ClickerScript',
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class QuoteMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      bool mobile =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? true
              : false;
      return Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: mobile ? 30 : 40),
              child: Text(
                '"An idea is like a virus,',
                style: TextStyle(
                  fontSize: mobile ? 15 : 25,
                  color: Colors.white,
                  fontFamily: 'RobotoLight',
                ),
              ),
            ),
            Container(
              child: Text(
                'Resilient. Highly contagious."',
                style: TextStyle(
                  fontSize: mobile ? 15 : 25,
                  color: Colors.white,
                  fontFamily: 'RobotoLight',
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class MobileMenuButton extends StatefulWidget {
  @override
  _MobileMenuButtonState createState() => _MobileMenuButtonState();
}

class _MobileMenuButtonState extends State<MobileMenuButton> {
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
              Navigator.pop(context);
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
          SizedBox(
            width: spaceBetween,
          ),
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
        ],
      );
    });
  }
}
