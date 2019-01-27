import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../calendar_package/flutter_calendar.dart' show CalendarCarousel;
import '../colors.dart';

class Calendar extends StatefulWidget{
  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<Calendar>
    with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: CalendarCarousel(
        thisMonthDayBorderColor: Colors.grey,
        height: 500.0,
        daysHaveCircularBorder: null,
        weekdayTextStyle: TextStyle(color: aBlueDark),
        weekendTextStyle: TextStyle(color: aPinkDark),
        todayButtonColor: aBlueLight,
      ),
    );
  }
}