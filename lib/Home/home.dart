import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'MobileHome/mobilehome.dart';
import 'WebHome/webhome.dart';

class WebOrMobileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 900,
        desktop: 900,
        watch: 900,
      ),
      desktop: WebHome(),
      mobile: MobileHome(),
    );
  }
}
