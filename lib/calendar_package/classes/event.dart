/* ******************************************************************
 * This is a modified version of "flutter_calendar_carousel" widget *
 *                                                                  *
 * https://github.com/dooboolab/flutter_calendar_carousel           *
 * ******************************************************************
 */

import 'package:flutter/material.dart';

class Event {
  final DateTime date;
  final String title;
  final Widget icon;

  Event({this.date, this.title, this.icon}) : assert(date != null);

  @override
  bool operator ==(other) {
    return this.date == other.date &&
        this.title == other.title &&
        this.icon == other.icon;
  }
}