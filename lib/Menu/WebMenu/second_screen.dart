import 'package:center_webview/center_webview.dart';

import 'package:flutter/material.dart';

import 'package:fluttertry/Home/WebHome/widgets_in_web_home/top.dart';
import 'package:fluttertry/Menu/WebMenu/widgets_in_web_menu/left.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../color.dart';

//the color
class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Hero(
          tag: 'web freelance',
          child: Container(
            height: height,
            width: width * (3 / 5),
            color: kMainColor,
          ),
        ),
        Hero(
          tag: 'box',
          placeholderBuilder: (context, size, widget) {
            return Container(
              color: kMainColor,
              height: size.height,
              width: size.width,
            );
          },
          child: Material(
            color: Colors.transparent,
            //type: MaterialType.transparency,
            child: Container(
              height: height,
              width: width * (2 / 5),
              color: kSecondColor,
              child: Container(
                margin: EdgeInsets.only(
                  top: 50.0,
                  left: 60.0,
                  bottom: 50.0,
                ),
                child: MyInfo(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  void customLaunch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            child: Text(
              'Projects',
              style: TextStyle(
                fontSize: 40.0,
                color: kMainColor,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 40.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  customLaunch(
                    'https://github.com/ajith-m-doodlebug/breaking_technology.git',
                  );
                });
              },
              child: Text(
                'Breaking Technology',
                style: TextStyle(
                  fontSize: 20.0,
                  color: kMainColor,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 40.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  customLaunch(
                    'https://pub.dev/packages/center_webview',
                  );
                });
              },
              child: Text(
                'Flutter Package',
                style: TextStyle(
                  fontSize: 20.0,
                  color: kMainColor,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 40.0),
            child: Text(
              'This Portfolio',
              style: TextStyle(
                fontSize: 20.0,
                color: kMainColor,
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        customLaunch(
                          'https://drive.google.com/file/d/1_twuSPFVVbPbT9jzGq0HjpilqPyzykR2/view?usp=sharing',
                        );
                      });
                    },
                    child: Text(
                      'Resume',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: kMainColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        customLaunch(
                          'https://www.linkedin.com/in/ajith-m-doodlebug/',
                        );
                      });
                    },
                    child: Text(
                      'LinkdIn',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: kMainColor,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        customLaunch(
                          'https://github.com/ajith-m-doodlebug',
                        );
                      });
                    },
                    child: Text(
                      'GitHub',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: kMainColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class WebMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Bottom(),
          CenterWebView(
            sideSpace: 60.0,
            maxWidth: 1100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Left(),
                Column(
                  children: [
                    Buttons(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  bool hover = true;
  List<BoxShadow> shadow = [
    BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 3)
  ];
  @override
  Widget build(BuildContext context) {
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
            height: 20.0,
            width: 20.0,
            decoration: BoxDecoration(
              color: kMainColor,
              boxShadow: hover ? shadow : null,
            ),
          ),
        ),
        SizedBox(
          width: 40.0,
        ),
        Container(
          margin: EdgeInsets.only(
            top: 25,
          ),
          height: 20.0,
          width: 20.0,
          decoration: BoxDecoration(
            color: kMainColor,
            //borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}

class Left extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SetOne(),
        Padding(
          padding: EdgeInsets.only(bottom: 70.0),
          child: NameQuote(),
        ),
        ClickMe(),
      ],
    );
  }
}
