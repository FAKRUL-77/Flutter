import 'package:first_demo_r_ui/widgets/callToAction/call_to_action.dart';
import 'package:first_demo_r_ui/widgets/centeredView/centered_view.dart';
import 'package:first_demo_r_ui/widgets/courseDetails/course_details.dart';
import 'package:first_demo_r_ui/widgets/navigationBar/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
              child: Row(
                children: [
                  CourseDetails(),
                  Expanded(
                      child: Center(
                    child: CallToAction('Join Course'),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
