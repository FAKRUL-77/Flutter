import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      curve: Curves.bounceIn,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      duration: Duration(milliseconds: 500),
      builder: (BuildContext context, double _val, child) {
        return Opacity(
          opacity: _val,
          child: Padding(
            child: child,
            padding: EdgeInsets.all(_val*20),
          ),
        );
      },
    );
  }
}
