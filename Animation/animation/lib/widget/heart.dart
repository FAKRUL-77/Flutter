import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    super.initState();

    _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(_controller);

    _controller.addListener(() {
      print(_controller.value);
      print(_colorAnimation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color: _colorAnimation.value,
            size: 30,
          ),
          onPressed: () {
            _controller.forward();
          },
        );
      },
    );
  }
}
