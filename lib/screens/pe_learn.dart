import 'package:flutter/material.dart';
import 'package:atreacch/colors.dart';

class PreeclampsiaNEclampsia extends MaterialPageRoute<Null> {

  PreeclampsiaNEclampsia() : super (builder: (BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: aBgWhite,
        title: new Text(
          'About Preeclampsia & Eclampsia',
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
              new Text('Preeclampsia & Eclampsia page content')
            ],
          )
        ],
      ),
    );
  });
}