import 'package:flutter/material.dart';

class NewProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          // padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(right: 10),
          // color: Colors.red,
          child: Stack(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 115,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        // spreadRadius: 3,
                        blurRadius: 5,
                      ),
                    ],
                    // color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/winter-fashion-1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 5),
                        padding: EdgeInsets.only(
                            left: 2, right: 2, top: 1, bottom: 1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: Text(
                          'New',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            // fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.4),
                        spreadRadius: 3,
                        blurRadius: 2,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 12,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 12,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 12,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 12,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 12,
                ),
              ),
              Text(
                '(2000)',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Nice Dress',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Tk: 200',
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ],
    );
  }
}
