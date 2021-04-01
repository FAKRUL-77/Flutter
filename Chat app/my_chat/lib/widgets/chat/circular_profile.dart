import 'package:flutter/material.dart';

class CircularProfile extends StatelessWidget {
  final String imageUrl;
  CircularProfile(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.green,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
