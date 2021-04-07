import 'package:first_demo_r_ui/widgets/callToAction/call_to_action.dart';
import 'package:first_demo_r_ui/widgets/courseDetails/course_details.dart';
import 'package:flutter/material.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseDetails(),
          SizedBox(
            height: 80,
          ),
          CallToAction('Join Course'),
        ],
      ),
    );
  }
}
