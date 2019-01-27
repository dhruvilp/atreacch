import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:atreacch/colors.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';

class Action extends StatefulWidget{
  @override
  ActionState createState() => ActionState();
}

class ActionState extends State<Action>
    with SingleTickerProviderStateMixin{

//  final places = new GoogleMapsPlaces(apiKey: "AIzaSyBaymozjgWIR2BX6Nx22eApn34zJr2qlFM");
//  PlacesSearchResponse response = await places.searchByText("google HQ") as PlacesSearchResponse;
//  print(response.results)

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        Card(
          color: aBlueLight,
          margin: EdgeInsets.all(20.0),
          elevation: 0.0,
          child: Container(
            height: 100.0,
            child: InkWell(
              splashColor: Colors.deepOrange,
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Card 2 (with Inkwell effect on tap)'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.green,
          margin: EdgeInsets.all(20.0),
          elevation: 0.0,
          child: Container(
            height: 100.0,
            child: InkWell(
              splashColor: Colors.deepOrange,
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Card 2 (with Inkwell effect on tap)'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.green,
          margin: EdgeInsets.all(20.0),
          elevation: 0.0,
          child: Container(
            height: 100.0,
            child: InkWell(
              splashColor: Colors.deepOrange,
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Card 2 (with Inkwell effect on tap)'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.green,
          margin: EdgeInsets.all(20.0),
          elevation: 0.0,
          child: Container(
            height: 100.0,
            child: InkWell(
              splashColor: Colors.deepOrange,
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Card 2 (with Inkwell effect on tap)'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.green,
          margin: EdgeInsets.all(20.0),
          elevation: 0.0,
          child: Container(
            height: 100.0,
            child: InkWell(
              splashColor: Colors.deepOrange,
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Card 2 (with Inkwell effect on tap)'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }


}