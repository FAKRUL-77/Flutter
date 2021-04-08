import 'package:animation/models/trip.dart';
import 'package:animation/view/details.dart';
import 'package:flutter/material.dart';

class TripList extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  List<Widget> _tripTiles = [];
  final GlobalKey _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addTrips();
  }

  void _addTrips() {
    List<Trip> _trips = [
      Trip(
          title: 'Navagio Beach',
          price: '6000',
          nights: '3',
          img: 'coconat.jpg'),
      Trip(
          title: 'Champagne Beach',
          price: '10000',
          nights: '5',
          img: 'coconattree.jpg'),
      Trip(title: 'Nissi Beach', price: '4000', nights: '2', img: 'couple.jpg'),
      Trip(
          title: 'Praia Grande Beach',
          price: '8000',
          nights: '4',
          img: 'starfish.jpg'),
    ];

    _trips.forEach((Trip trip) {
      _tripTiles.add(_buildTile(trip));
    });
  }

  Widget _buildTile(Trip trip) {
    return ListTile(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Details(trip: trip)));
      },
      contentPadding: EdgeInsets.all(15),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(trip.title,
              style: TextStyle(fontSize: 20, color: Colors.grey[600])),
          SizedBox(
            height: 5,
          ),
          Text('${trip.nights} nights',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[300])),
        ],
      ),
      leading: Hero(
        tag: 'location-img-${trip.img}',
        child: Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage('images/${trip.img}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      trailing: Text('TK ${trip.price}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _tripTiles.length,
        itemBuilder: (context, index) {
          return _tripTiles[index];
        });
  }
}
