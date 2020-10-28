import 'package:flutter/material.dart';

import '../../../color.dart';

Widget flightShuttleBuilder(
  BuildContext flightContext,
  Animation<double> animation,
  HeroFlightDirection flightDirection,
  BuildContext fromHeroContext,
  BuildContext toHeroContext,
) {
  return DefaultTextStyle(
    style: DefaultTextStyle.of(toHeroContext).style,
    child: toHeroContext.widget,
  );
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'name',
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
              fontSize: 60,
              color: kSecondColor,
              fontFamily: 'ClickerScript',
            ),
          ),
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'is a Flutter Developer and a UI Designer,',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: 'RobotoLight',
            ),
          ),
        ),
        Container(
          child: Text(
            'He lives in Tamil Nadu, India',
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
