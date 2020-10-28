import 'package:flutter/material.dart';
import 'package:center_webview/center_webview.dart';

import '../../color.dart';
import 'widgets_in_web_home/bottom.dart';
import 'widgets_in_web_home/top.dart';

import 'widgets_in_web_home/middle.dart';

class WebHome extends StatefulWidget {
  @override
  _WebHomeState createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //base
        children: [
          //top
          CenterWebView(
            sideSpace: 60.0,
            maxWidth: 1100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SetOne(),
                HomeButton(),
              ],
            ),
          ),
          //middle
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: CenterWebView(
              sideSpace: 150.0,
              maxWidth: 650,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Name(),
                  Description(),
                ],
              ),
            ),
          ),
          //bottom
          CenterWebView(
            sideSpace: 60.0,
            maxWidth: 1100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Welcome(),
                SetThree(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
