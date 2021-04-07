import 'package:first_demo_r_ui/widgets/callToAction/call_to_action_mobile.dart';
import 'package:first_demo_r_ui/widgets/callToAction/call_to_action_tablet_dextop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      desktop: CallToActionTabletDesktop(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
