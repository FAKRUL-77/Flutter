import 'package:flutter/material.dart';

class CategoryOfferCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 15,
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/winter-fashion-1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
          ),
        ),
      ),
    );
  }
}
