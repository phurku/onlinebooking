import 'package:flutter/material.dart';
import 'package:hamropasal/ui/pages/Flight/airdetail.dart';
import 'package:hamropasal/ui/pages/Hotel/hoteldetails.dart';





myDetail1() {
  return Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
    Text(
      'Choose your Hotels',
      style: TextStyle(
          background: Paint(),
          color: Colors.green,
          fontSize: 6,
          fontStyle: FontStyle.italic),
    ),
    Row(
      children: <Widget>[
        Icon(
          Icons.star_border,
          size: 6,
        ),
        Icon(
          Icons.star_border,
          size: 6,
        ),
        Icon(
          Icons.star_border,
          size: 6,
        ),
        Icon(
          Icons.star_border,
          size: 6,
        ),
        Icon(
          Icons.star_border,
          size: 6,
        ),
        SizedBox(
          height: 5,
        ),
      ],
    ),
    Divider(
      height: 8,
    ),
    Column(children: <Widget>[
      RaisedButton(
        elevation: 0,
        color: Colors.lightBlue,
        onPressed: () => HotelDetailPage(),
        child: Text(
          'View Details',
          style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      )
    ])
  ]);
}

myDetail() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Air Tickets',
        style: TextStyle(
            background: Paint(),
            color: Colors.green,
            fontSize: 8,
            fontStyle: FontStyle.italic),
      ),
      Row(
        children: <Widget>[
          Text(
            "Airlines in Nepal",
            style: TextStyle(
              fontSize: 5,
            ),
          ),
        ],
      ),
      Divider(
        height: 8,
      ),
      Column(
        children: <Widget>[
          RaisedButton(
            elevation: 0,
            color: Colors.lightBlue,
            onPressed: () =>AirDetailPage(),
            child: Text(
              'View Details',
              style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          )
        ],
      )
    ],
  );
}
