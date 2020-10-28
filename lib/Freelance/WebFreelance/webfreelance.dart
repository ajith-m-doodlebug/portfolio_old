import 'package:center_webview/center_webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertry/color.dart';

import '../widgets_in_freelance.dart';

class WebFreelance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'web freelance',
      child: Scaffold(
        backgroundColor: kMainColor,
        body: CenterWebView(
          sideSpace: 60.0,
          maxWidth: 1100,
          child: ListView(
            children: [
              //nav bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doodlebug',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RobotoRegular',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      NavBarFreelance(
                        title: 'Home',
                        fontSize: 20.0,
                        home: true,
                      ),
                      SizedBox(width: 30),
                      NavBarFreelance(
                        title: 'Menu',
                        fontSize: 20.0,
                        home: false,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              // main coll
              Column(
                children: [
                  FreelanceText(
                    text: 'Are your skills stuck in a paper resume?',
                    fontSize: 25,
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      FreelanceText(
                        text: 'Do you want to showcase your',
                        fontSize: 25,
                      ),
                      FreelanceText(
                        text: 'talent to the world?',
                        fontSize: 25,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      FreelanceText(
                        text: 'If yes, all you need is a',
                        fontSize: 25,
                      ),
                      FreelanceText(
                        text: 'Portfolio Website!',
                        fontSize: 25,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Container(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'RobotoLight',
                            ),
                            children: [
                              TextSpan(text: 'For making '),
                              TextSpan(
                                text: 'BEAUTIFUL',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: kSecondColor,
                                  fontFamily: 'RobotoLight',
                                ),
                              ),
                              TextSpan(text: ' Applications and Websites'),
                            ],
                          ),
                        ),
                      ),
                      FreelanceText(
                        text: 'Contact me',
                        fontSize: 25,
                      ),
                      FreelanceText(
                        text: '(contact Info in resume)',
                        fontSize: 15,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    color: kMainColor,
                    //margin: EdgeInsets.only(left: 30),
                    height: 260.0,
                    width: 200,
                    child: Image.asset(
                      'images/tail.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
