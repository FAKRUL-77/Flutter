import 'package:flutter/cupertino.dart';

class Product {
  final String title;
  final String imgUrl;
  final String category;
  final double price;
  final String description;
  final int offerRate;
  final bool isNew;
  final isFavorite;

  Product({
    @required this.title,
    @required this.category,
    @required this.imgUrl,
    @required this.price,
    @required this.description,
    @required this.offerRate,
    @required this.isFavorite,
    @required this.isNew,
  });
}
