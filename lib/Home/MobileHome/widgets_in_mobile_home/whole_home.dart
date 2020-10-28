import 'package:flutter/material.dart';
import 'package:fluttertry/Home/WebHome/widgets_in_web_home/middle.dart';
import 'package:fluttertry/Home/WebHome/widgets_in_web_home/top.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../color.dart';

class DoodleAndButtonMobile extends StatelessWidget {
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
            HomeButton(),
          ],
        );
      },
    );
  }
}

class NameAndAboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      bool mobile =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? true
              : false;
      return Column(
        children: [
          Hero(
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
          ),
          Column(
            children: [
              Container(
                child: Text(
                  'is a Flutter Developer and a UI Designer,',
                  style: TextStyle(
                    fontSize: mobile ? 15 : 25,
                    color: Colors.white,
                    fontFamily: 'RobotoLight',
                  ),
                ),
              ),
              Container(
                child: Text(
                  'He lives in Tamil Nadu, India',
                  style: TextStyle(
                    fontSize: mobile ? 15 : 25,
                    color: Colors.white,
                    fontFamily: 'RobotoLight',
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}

class WelcomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double fontSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 15
              : 20;
      return Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        child: Text(
          'Hey! Nice to meet you!',
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontFamily: 'RobotoLight',
          ),
        ),
      );
    });
  }
}
