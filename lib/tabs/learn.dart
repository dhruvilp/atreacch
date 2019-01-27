import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../colors.dart';

class Learn extends StatefulWidget{
  @override
  LearnState createState() => LearnState();
}

class LearnState extends State<Learn>
    with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Learn About page content')
            ],
          )
        ],
      ),
    );
  }
}