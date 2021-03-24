import 'package:flutter/material.dart';

class BagScreen extends StatelessWidget {
  static const routeName = '/bag-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bag'),
      ),
      body: Center(
        child: Text('This is Bag page'),
      ),
    );
  }
}
