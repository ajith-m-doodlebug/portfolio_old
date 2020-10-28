import 'package:center_webview/center_webview.dart';
import 'package:flutter/material.dart';
import 'package:fluttertry/Home/home.dart';
import 'package:fluttertry/Menu/menu.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../color.dart';
import '../widgets_in_freelance.dart';

class MobileFreelance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      bool mobile =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? true
              : false;
      double textSize = mobile ? 20 : 25;
      double spaceBetween = mobile ? 60 : 40;
      return Hero(
        tag: 'mobile freelance',
        child: Scaffold(
          backgroundColor: kMainColor,
          body: CenterWebView(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //nav bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Doodlebug',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: mobile ? 15 : 20,
                          fontFamily: 'RobotoRegular',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          NavBarFreelance(
                            title: 'Home',
                            fontSize: mobile ? 15 : 20,
                            home: true,
                          ),
                          SizedBox(width: 30),
                          NavBarFreelance(
                            title: 'Menu',
                            fontSize: mobile ? 15 : 20,
                            home: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: spaceBetween),
                  // main coll
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FreelanceText(
                        text: 'Are your skills stuck in a',
                        fontSize: textSize,
                      ),
                      FreelanceText(
                        text: 'paper resume?',
                        fontSize: textSize,
                      ),
                      SizedBox(height: spaceBetween),
                      Column(
                        children: [
                          FreelanceText(
                            text: 'Do you want to showcase your',
                            fontSize: textSize,
                          ),
                          FreelanceText(
                            text: 'talent to the world?',
                            fontSize: textSize,
                          ),
                        ],
                      ),
                      SizedBox(height: spaceBetween),
                      Column(
                        children: [
                          FreelanceText(
                            text: 'If yes, all you need is a',
                            fontSize: textSize,
                          ),
                          FreelanceText(
                            text: 'Portfolio Website!',
                            fontSize: textSize,
                          ),
                        ],
                      ),
                      SizedBox(height: spaceBetween),
                      Column(
                        children: [
                          FreelanceText(
                            text: 'For making',
                            fontSize: textSize,
                          ),
                          Text(
                            'BEAUTIFUL',
                            style: TextStyle(
                              fontSize: textSize,
                              color: kSecondColor,
                              fontFamily: 'RobotoLight',
                            ),
                          ),
                          FreelanceText(
                            text: 'Applications and Websites',
                            fontSize: textSize,
                          ),
                          FreelanceText(
                            text: 'Contact me',
                            fontSize: textSize,
                          ),
                          FreelanceText(
                            text: '(contact Info in resume)',
                            fontSize: mobile ? 10 : 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
