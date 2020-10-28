import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'MobileMenu/mobilemenu.dart';
import 'WebMenu/second_screen.dart';

class WebOrMobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 900,
        desktop: 900,
        watch: 900,
      ),
      desktop: WebMenu(),
      mobile: MobileMenu(),
    );
  }
}
