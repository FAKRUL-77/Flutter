import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CategoryFilterScreen extends StatefulWidget {
  static const routeName = '/category-screen';
  @override
  _CategoryFilterScreenState createState() => _CategoryFilterScreenState();
}

class _CategoryFilterScreenState extends State<CategoryFilterScreen> {
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  bool isRed = false;
  bool isPressedSizeButton = false;
  final _categoryList = ['Women', 'Men', 'Kids', 'Boys', 'Girls'];
  @override
  Widget build(BuildContext context) {
    Widget _categoryButton(String categoryName) {
      return InkWell(
        child: Container(
          height: 30,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isPressedSizeButton ? Colors.white : Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                spreadRadius: 1,
                blurRadius: 1,
                // offset: Offset(0, 0),
              ),
            ],
          ),
          child: Center(
            child: Text(
              categoryName,
              style: TextStyle(
                color: isPressedSizeButton ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            isPressedSizeButton = !isPressedSizeButton;
          });
        },
      );
    }

    Widget _colorWidget(Color clr) {
      return Container(
        width: 35.0,
        height: 35.0,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isRed ? Colors.green : Colors.white,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                isRed = !isRed;
              });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: clr,
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      );
    }

    Widget _sizeWidget(String size) {
      return InkWell(
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isPressedSizeButton ? Colors.white : Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                spreadRadius: 1,
                blurRadius: 1,
                // offset: Offset(0, 0),
              ),
            ],
          ),
          child: Center(
            child: Text(
              size,
              style: TextStyle(
                color: isPressedSizeButton ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            isPressedSizeButton = !isPressedSizeButton;
          });
        },
      );
    }

    return Scaffold(
      // backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Filters'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Price Range',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height / 9,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      bottom: 40,
                      left: 0,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _currentRangeValues.start.round().toString(),
                            ),
                            Text(
                              _currentRangeValues.end.round().toString(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    RangeSlider(
                      activeColor: Colors.green[200],
                      inactiveColor: Colors.black12,
                      values: _currentRangeValues,
                      min: 0,
                      max: 100,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Colors',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height / 10,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _colorWidget(Colors.red),
                    _colorWidget(Colors.green),
                    _colorWidget(Colors.blue),
                    _colorWidget(Colors.pink),
                    _colorWidget(Colors.grey),
                    _colorWidget(Colors.cyan),
                    _colorWidget(Colors.lime),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Sizes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height / 10,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _sizeWidget('S'),
                    _sizeWidget('M'),
                    _sizeWidget('L'),
                    _sizeWidget('XL'),
                    _sizeWidget('XXL'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Category',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Center(
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        _categoryButton('Women'),
                        SizedBox(height: 10),
                        _categoryButton('Men'),
                        SizedBox(height: 10),
                        _categoryButton('Kids'),
                        SizedBox(height: 10),
                        _categoryButton('Kids'),
                        SizedBox(height: 10),
                        _categoryButton('Kids'),
                        SizedBox(height: 10),
                        _categoryButton('Kids'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Colors.black54,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Colors.green,
                    onPressed: () {},
                    child: Text(
                      'Apply',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
