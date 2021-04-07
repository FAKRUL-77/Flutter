import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlign =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 70;

      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.w800,
                height: 0.9,
              ),
              textAlign: textAlign,
            ),
            Text(
              'In thisn course we will go over the basic using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionaluty, Modals and more..',
              style: TextStyle(
                height: 1.7,
                fontSize: descriptionSize,
              ),
              textAlign: textAlign,
            ),
          ],
        ),
      );
    });
  }
}
