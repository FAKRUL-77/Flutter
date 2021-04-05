import 'package:first_demo_r_ui/widgets/navigationBar/navbar_logo.dart';
import 'package:first_demo_r_ui/widgets/navigationBar/navigation_bar_tablet_dextop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'navbar_item.dart';
import 'navigation_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDextop(),
    );
  }
}
