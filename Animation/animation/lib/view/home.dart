import 'package:animation/widget/screenTitle.dart';
import 'package:animation/widget/tripList.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            SizedBox(
              height: 160,
              child: ScreenTitle(
                text: 'Beach Trips',
              ),
            ),
            Flexible(
              child: TripList(),
            )
            //Sandbox(),
          ],
        ),
      ),
    );
  }
}
