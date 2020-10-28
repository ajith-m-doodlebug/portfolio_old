import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'MobileFreelance/mobilefreelance.dart';
import 'WebFreelance/webfreelance.dart';

class WebOrMobileFreelance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 900,
        desktop: 900,
        watch: 900,
      ),
      desktop: WebFreelance(),
      mobile: MobileFreelance(),
    );
  }
}
