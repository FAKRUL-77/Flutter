import 'package:first_demo_r_ui/views/home/home_content_dextop.dart';
import 'package:first_demo_r_ui/views/home/home_content_mobile.dart';
import 'package:first_demo_r_ui/widgets/callToAction/call_to_action.dart';
import 'package:first_demo_r_ui/widgets/centeredView/centered_view.dart';
import 'package:first_demo_r_ui/widgets/courseDetails/course_details.dart';
import 'package:first_demo_r_ui/widgets/navigationBar/navigation_bar.dart';
import 'package:first_demo_r_ui/widgets/navigationDrawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDextop(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
