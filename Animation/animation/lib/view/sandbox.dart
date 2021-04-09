import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        duration: Duration(seconds: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _margin = 50;
                });
              },
              child: Text('Animate Margin'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.red;
                });
              },
              child: Text('Animate Color'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _width = 400;
                });
              },
              child: Text('Animate Width'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
              child: Text('Animate Opacity'),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text(
                'Hide Me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
