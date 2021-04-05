import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'FLUTTER WEB.\nTHE BASICS',
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.w800,
              height: 0.9,
            ),
          ),
          Text(
            'In thisn course we will go over the basic using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionaluty, Modals and more..',
            style: TextStyle(
              height: 1.7,
              fontSize: 21,
            ),
          ),
        ],
      ),
    );
  }
}
