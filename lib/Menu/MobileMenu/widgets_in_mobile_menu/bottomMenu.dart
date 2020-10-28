import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertry/Freelance/freelance.dart';
import 'package:fluttertry/color.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  void customLaunch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      bool mobile =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? true
              : false;
      double textSize = mobile ? 25 : 40;
      double boxSize = mobile ? 20 : 25;
      return Hero(
        tag: 'mobile freelance',
        child: Material(
          child: Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            color: kMainColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
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
                      fontSize: textSize,
                      fontFamily: 'RobotoRegular',
                      color: kSecondColor,
                    ),
                  ),
                ),
                SizedBox(height: boxSize),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
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
                          fontSize: textSize,
                          fontFamily: 'RobotoRegular',
                          color: kSecondColor,
                        ),
                      ),
                    ),
                    SizedBox(width: mobile ? 50 : 70),
                    GestureDetector(
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
                          fontSize: textSize,
                          fontFamily: 'RobotoRegular',
                          color: kSecondColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: boxSize),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      customLaunch(
                        'mailto:ajithmanivannan1225@gmail.com?subject= & body=',
                      );
                    });
                  },
                  child: Text(
                    'E-mail',
                    style: TextStyle(
                      fontSize: textSize,
                      fontFamily: 'RobotoRegular',
                      color: kSecondColor,
                    ),
                  ),
                ),
                SizedBox(height: boxSize),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WebOrMobileFreelance();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Don\'t click here',
                    style: TextStyle(
                      fontSize: mobile ? 15 : 25,
                      fontFamily: 'RobotoRegular',
                      color: kSecondColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
