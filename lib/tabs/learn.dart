import 'dart:async';
import 'package:atreacch/screens/embo_learn.dart';
import 'package:atreacch/screens/oh_learn.dart';
import 'package:atreacch/screens/pe_learn.dart';
import 'package:atreacch/screens/pri_learn.dart';
import 'package:atreacch/screens/uc_learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:atreacch/colors.dart';

class Learn extends StatefulWidget{
  @override
  LearnState createState() => LearnState();
}

class LearnState extends State<Learn>
    with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        Card(
          color: aBlueLight,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aBlueDark,
              onTap: () { Navigator.push(context, ObstetricHemorrhage());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Obstetric Hemorrhage',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: aGreen,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aBlueLight,
              onTap: () { Navigator.push(context, PregnancyRelatedInfections());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Pregnancy Related Infections',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: aPurple,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aPurpleLight,
              onTap: () { Navigator.push(context, PreeclampsiaNEclampsia());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Preeclampsia & Eclampsia',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: aPinkDark,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aPinkLight,
              onTap: () { Navigator.push(context, UnnecessaryCSection()); },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Unnecessary C-Section',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: aBlueDark,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aBlueLight,
              onTap: () { Navigator.push(context, Embolism());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Embolism',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: aBlueLight,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aBlueDark,
              onTap: () { Navigator.push(context, ObstetricHemorrhage());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Antenatal Depression',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: aGreen,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aBlueLight,
              onTap: () { Navigator.push(context, PregnancyRelatedInfections());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Hyperemesis Gravidarum',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: aPurple,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aPurpleLight,
              onTap: () { Navigator.push(context, PreeclampsiaNEclampsia());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Mood Disorder',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: aPinkDark,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aPinkLight,
              onTap: () { Navigator.push(context, UnnecessaryCSection()); },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Unnecessary C-Section',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: aBlueDark,
          margin: EdgeInsets.all(10.0),
          elevation: 0.0,
          child: Container(
            height: 80.0,
            child: InkWell(
              splashColor: aBlueLight,
              onTap: () { Navigator.push(context, Embolism());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Embolism',
                      style: TextStyle(fontWeight: FontWeight.bold, color: aBgWhite, fontSize: 25,),
                      textAlign: TextAlign.center,),
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