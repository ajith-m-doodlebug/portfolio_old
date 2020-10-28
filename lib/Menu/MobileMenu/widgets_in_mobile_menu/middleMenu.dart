import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../color.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
      double textSize = mobile ? 15 : 30;
      double spaceBetween = mobile ? 20 : 25;
      return Container(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        color: kSecondColor,
        child: Column(
          children: [
            Text(
              'Projects',
              style: TextStyle(
                fontSize: mobile ? 25 : 40,
                fontFamily: 'RobotoRegular',
                color: kMainColor,
              ),
            ),
            SizedBox(height: spaceBetween),
            GestureDetector(
              onTap: () {
                setState(() {
                  customLaunch(
                    'https://github.com/ajith-m-doodlebug/breaking_technology.git',
                  );
                });
              },
              child: Text(
                'Breaking  Tech.',
                style: TextStyle(
                  fontSize: textSize,
                  fontFamily: 'RobotoRegular',
                  color: kMainColor,
                ),
              ),
            ),
            SizedBox(height: spaceBetween),
            GestureDetector(
              onTap: () {
                setState(() {
                  customLaunch(
                    'https://pub.dev/packages/center_webview',
                  );
                });
              },
              child: Text(
                'Flutter Package.',
                style: TextStyle(
                  fontSize: textSize,
                  fontFamily: 'RobotoRegular',
                  color: kMainColor,
                ),
              ),
            ),
            SizedBox(height: spaceBetween),
            Text(
              'This Portfolio.',
              style: TextStyle(
                fontSize: textSize,
                fontFamily: 'RobotoRegular',
                color: kMainColor,
              ),
            ),
          ],
        ),
      );
    });
  }
}
