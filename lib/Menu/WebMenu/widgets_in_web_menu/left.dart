import 'package:flutter/material.dart';
import 'package:fluttertry/Freelance/freelance.dart';
import 'package:fluttertry/Home/WebHome/widgets_in_web_home/middle.dart';

class ClickMe extends StatefulWidget {
  @override
  _ClickMeState createState() => _ClickMeState();
}

class _ClickMeState extends State<ClickMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: InkWell(
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
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'RobotoLight',
          ),
        ),
      ),
    );
  }
}

class NameQuote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Name(),
        Column(
          children: [
            Container(
              child: Text(
                '"An idea is like a virus,',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'RobotoLight',
                ),
              ),
            ),
          ],
        ),
        Container(
          child: Text(
            'Resilient. Highly contagious."',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: 'RobotoLight',
            ),
          ),
        ),
      ],
    );
  }
}
