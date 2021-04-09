import 'package:animation/models/trip.dart';
import 'package:animation/view/details.dart';
import 'package:flutter/material.dart';

class TripList extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  List<Widget> _tripTiles = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _addTrips();
    });
  }

  void _addTrips() {
    List<Trip> _trips = [
      Trip(
        title: 'Navagio Beach',
        price: '6000',
        nights: '3',
        img: 'coconat.jpg',
      ),
      Trip(
        title: 'Champagne Beach',
        price: '10000',
        nights: '5',
        img: 'coconattree.jpg',
      ),
      Trip(
        title: 'Nissi Beach',
        price: '4000',
        nights: '2',
        img: 'couple.jpg',
      ),
      Trip(
        title: 'Praia Grande Beach',
        price: '8000',
        nights: '4',
        img: 'starfish.jpg',
      ),
    ];

    Future future = Future(() {});
    _trips.forEach((Trip trip) {
      future = future.then((_) {
        return Future.delayed(const Duration(milliseconds: 80), () {
          _tripTiles.add(_buildTile(trip));
          _listKey.currentState?.insertItem(_tripTiles.length - 1);
        });
      });
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

  Tween<Offset> _offset = Tween(begin: Offset(1, 0), end: Offset(0, 0));
  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: _listKey,
        initialItemCount: _tripTiles.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            child: _tripTiles[index],
            position: animation.drive(_offset),
          );
        });
  }
}
