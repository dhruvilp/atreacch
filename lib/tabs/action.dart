import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Action extends StatefulWidget{
  @override
  ActionState createState() => ActionState();
}

class ActionState extends State<Action>
    with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Action page content')
            ],
          )
        ],
      ),
    );
  }
}