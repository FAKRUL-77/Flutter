import 'package:flutter/material.dart';
import '../../../../data.dart';

class CategoryCardView extends StatelessWidget {
  final title;
  final description;
  final price;
  final imgUrl;
  CategoryCardView(
    this.title,
    this.description,
    this.price,
    this.imgUrl,
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          child: InkWell(
            onTap: () {
              // Navigator.of(context, rootNavigator: false)
              //     .pushNamed(CategoryScreen.routeName);
              // Navigator.of(context).pushNamed(CategoryScreen.routeName);
              // Navigator.of(context, rootNavigator: false)
              //     .pushNamed(CategoryScreen.routeName);
            },
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 15,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      // height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(0),
                        ),
                        image: DecorationImage(
                          image: AssetImage(imgUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2 + 20,
                  height: MediaQuery.of(context).size.height / 6,
                  child: Material(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    elevation: 15,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 13,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 13,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 13,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 13,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 13,
                                ),
                              ),
                              Text(
                                '(2000)',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            price.toString() + "\$",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 5,
          child: Container(
            margin: EdgeInsets.only(right: 5),
            height: 30,
            width: 30,
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
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
