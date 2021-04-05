import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 50,
      ),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1200,
        ),
        child: child,
      ),
    );
  }
}
