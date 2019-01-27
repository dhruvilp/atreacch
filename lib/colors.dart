import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const aPurpleLight = const Color(0xFFD8DCFF);
const aPurple = const Color(0xFFAEADF0);
const aPinkDark = const Color(0xFFE77FA6);
const aPinkLight = const Color(0xFFFFC4D1);
const aGreen = const Color(0xFF7DCFB6);
const aBlueLight = const Color(0xFF00B2CA);
const aBlueDark = const Color(0xFF1D4E89);
const aPurpleSuperDark = const Color(0xFF3C386B);

const aBgWhite = Colors.white;
const aBlueGrey = Colors.blueGrey;
const aGreyLight = const Color(0xFFECEFF1);
const cyanShadow = const Color(0xFF7FD8E4);

const g_blueDark_blueLight = const LinearGradient(
    colors: [aBlueDark, aBlueLight],
    begin: const FractionalOffset(0.4, 0.0),
    end: const FractionalOffset(0.0, 0.5),
    stops:[0.0,1.0],
    tileMode: TileMode.clamp
);

const g_blueLight_green = const LinearGradient(
    colors: [aBlueLight, aGreen],
    begin: const FractionalOffset(0.4, 0.0),
    end: const FractionalOffset(0.0, 0.5),
    stops:[0.0,1.0],
    tileMode: TileMode.clamp
);

const g_pinkDark_purple = const LinearGradient(
    colors: [aPinkDark, aPurple],
    begin: const FractionalOffset(0.4, 0.0),
    end: const FractionalOffset(0.0, 0.5),
    stops:[0.0,1.0],
    tileMode: TileMode.clamp
);