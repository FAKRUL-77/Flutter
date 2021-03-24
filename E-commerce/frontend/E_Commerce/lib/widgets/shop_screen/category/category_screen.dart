import 'package:E_Commerce/widgets/shop_screen/category/widgets/categoryCard.dart';
import 'package:E_Commerce/widgets/shop_screen/category/widgets/category_filter_screen.dart';
import 'package:flutter/material.dart';
import '../../../data.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/category-screen';
  @override
  Widget build(BuildContext context) {
    final List<String> _categoryList = [
      "T-shirt",
      "Crop tops",
      "Sleeveless",
      "Blouses",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leadingWidth: 45,
        title: Text('Category'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            color: Colors.green[50],
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 19,
                  // height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black12,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: Text(
                                _categoryList[index],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  height: MediaQuery.of(context).size.height / 23,
                  color: Colors.white,
                  child: Container(
                    // width: MediaQuery.of(context).size.width - 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true)
                                  .pushNamed(CategoryFilterScreen.routeName);
                            },
                            child: Row(
                              children: [
                                Icon(Icons.filter_list_outlined),
                                SizedBox(
                                  width: 3,
                                ),
                                Text('Filters'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Stack(
                                      overflow: Overflow.visible,
                                      children: <Widget>[
                                        Positioned(
                                          right: -35.0,
                                          top: -35.0,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: CircleAvatar(
                                              radius: 15,
                                              child: Icon(
                                                Icons.close,
                                                size: 25,
                                              ),
                                              backgroundColor: Colors.red,
                                            ),
                                          ),
                                        ),

                                        // Form(
                                        // key: _formKey,
                                        // child:

                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Sort by',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              color: Colors.green[50],
                                              padding: EdgeInsets.all(8.0),
                                              child: InkWell(
                                                // splashColor: Colors.red,
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'Popular',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              color: Colors.green[50],
                                              padding: EdgeInsets.all(8.0),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'Newest',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              color: Colors.green[50],
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'Customer review',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                        // ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Row(
                              children: [
                                Icon(Icons.swap_vert_circle_rounded),
                                SizedBox(
                                  width: 3,
                                ),
                                Text('Price low to high'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: InkWell(
                            // highlightColor: Colors.green.withOpacity(.5),
                            // splashColor: Colors.red,
                            // borderRadius: BorderRadius.circular(45),
                            // radius: 35,
                            onTap: () {},
                            // padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.view_list_sharp,
                              size: 20,
                              // color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return CategoryCardView(
                  products[index].title,
                  products[index].description,
                  products[index].price,
                  products[index].imgUrl,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
