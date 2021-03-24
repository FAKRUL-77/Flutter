import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './Provider/greatPlaces.dart';
import './Screens/placeListScreen.dart';
import 'Screens/addPlaceScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'GreatPlace',
        theme: ThemeData(
          accentColor: Colors.greenAccent,
          primaryColor: Colors.lightGreen,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (context) => AddPlaceScreen(),
        },
      ),
    );
  }
}
