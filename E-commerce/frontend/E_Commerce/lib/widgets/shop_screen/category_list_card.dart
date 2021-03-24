import './category/category_screen.dart';
import 'package:flutter/material.dart';
import '../../data.dart';

class CategoryListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context, rootNavigator: false)
        //     .pushNamed(CategoryScreen.routeName);
        // Navigator.of(context).pushNamed(CategoryScreen.routeName);
        Navigator.of(context, rootNavigator: false)
            .pushNamed(CategoryScreen.routeName);
      },
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 90,
            margin: EdgeInsets.only(left: 10),
            child: Material(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              elevation: 15,
              child: Container(
                height: 90,
                width: (MediaQuery.of(context).size.width) / 2 - 10,
                child: Center(
                  child: Text('New'),
                ),
              ),
            ),
          ),
          Container(
            height: 90,
            margin: EdgeInsets.only(right: 10),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 15,
              child: Container(
                height: 90,
                // width: double.infinity,
                width: (MediaQuery.of(context).size.width) / 2 - 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
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
        ],
      ),
    );
  }
}
