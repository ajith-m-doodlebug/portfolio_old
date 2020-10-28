import 'package:flutter/material.dart';
import 'package:fluttertry/Home/home.dart';
import '../color.dart';

class FreelanceText extends StatelessWidget {
  final String text;
  final double fontSize;

  const FreelanceText({
    Key key,
    @required this.fontSize,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontFamily: 'RobotoLight',
        ),
      ),
    );
  }
}

class NavBarFreelance extends StatefulWidget {
  final String title;
  final double fontSize;
  final bool home;

  const NavBarFreelance({
    Key key,
    @required this.title,
    @required this.fontSize,
    @required this.home,
  }) : super(key: key);

  @override
  _NavBarFreelanceState createState() => _NavBarFreelanceState();
}

class _NavBarFreelanceState extends State<NavBarFreelance> {
  bool hover = false;
  Future navigateToHome() {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return WebOrMobileHome();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onHover: (bool isHover) {
        if (isHover) {
          setState(() {
            hover = true;
          });
        } else {
          setState(() {
            hover = false;
          });
        }
      },
      onTap: () {
        widget.home ? navigateToHome() : Navigator.pop(context);
      },
      child: Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: widget.fontSize,
            color: hover ? kSecondColor : Colors.white,
            fontFamily: 'RobotoRegular',
          ),
        ),
      ),
    );
  }
}
