import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SelfAssess extends StatefulWidget{
  @override
  SelfAssessState createState() => SelfAssessState();
}

class SelfAssessState extends State<SelfAssess>
    with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Self Assess page content')
            ],
          )
        ],
      ),
    );
  }
}