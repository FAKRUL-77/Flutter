// import 'package:bottomNavBarApp/widgets/shop_screen/category_list_card.dart';
// import 'package:bottomNavBarApp/widgets/shop_screen/category_offer_card.dart';
import '../shop_screen/category_list_card.dart';
import '../shop_screen/category_offer_card.dart';
import 'package:flutter/material.dart';



class KidsCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 10,
                ),
                CategoryOfferCard(),
                SizedBox(height: 10),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // SizedBox(
                //   height: 20,
                // ),
                CategoryListCard(),
                SizedBox(
                  height: 10,
                ),
                CategoryListCard(),
                SizedBox(
                  height: 10,
                ),
                CategoryListCard(),
                SizedBox(
                  height: 10,
                ),
                CategoryListCard(),
                SizedBox(
                  height: 10,
                ),
                CategoryListCard(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
