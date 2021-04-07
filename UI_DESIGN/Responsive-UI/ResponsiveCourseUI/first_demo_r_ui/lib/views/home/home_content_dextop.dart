import 'package:first_demo_r_ui/widgets/callToAction/call_to_action.dart';
import 'package:first_demo_r_ui/widgets/courseDetails/course_details.dart';
import 'package:flutter/material.dart';

class HomeContentDextop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CourseDetails(),
        Expanded(
            child: Center(
          child: CallToAction('Join Course'),
        ))
      ],
    );
  }
}
