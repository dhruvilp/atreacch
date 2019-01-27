import 'package:flutter/material.dart';
import 'package:atreacch/colors.dart';

class Embolism extends MaterialPageRoute<Null> {

  Embolism() : super (builder: (BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: aBgWhite,
        title: new Text(
          'About Embolism',
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
              new Text('Embolism page content')
            ],
          )
        ],
      ),
    );
  });
}