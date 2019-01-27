import 'package:flutter/material.dart';
import 'package:atreacch/colors.dart';

class About extends StatelessWidget {
  @override
  Widget build (BuildContext context) => new Scaffold(

    //App Bar
    appBar: new AppBar(
      backgroundColor: aBgWhite,
      title: new Text(
        'About Atreacch',
        style: new TextStyle(
          fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
        ),
      ),
      elevation: 0.3,
    ),

    //Content of tabs
    body: new PageView(
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('About page content')
          ],
        )
      ],
    ),
  );
}