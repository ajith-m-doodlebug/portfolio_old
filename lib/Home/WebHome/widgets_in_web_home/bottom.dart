import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../color.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Text(
        'Hey! Nice to meet you!',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'RobotoLight',
        ),
      ),
    );
  }
}

class SetThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 160,
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            height: 160.0,
            width: 300,
            decoration: BoxDecoration(
              color: kSecondColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 0),
                  blurRadius: 3,
                ),
              ],
            ),
          ),
          Hero(
            tag: 'box',
            child: Container(
              margin: EdgeInsets.only(left: 30),
              height: 260.0,
              width: 200,
              child: Image.asset(
                'images/head.png',
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                color: kSecondColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(2, 2),
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
