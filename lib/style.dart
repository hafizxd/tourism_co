import 'package:flutter/material.dart';

const largeTextSize = 22.0;
const mediumTextSize = 16.0;
const smallTextSize = 12.0;

const String FontNameDefault = 'Montserrat';

const Color AppBarBackgroundColor = Colors.red;
const Color TextColorDark = Colors.black;
const Color TextColorLight = Colors.white;
const Color TextColorAccent = Colors.red;
const Color TextColorFaint = Color.fromRGBO(125, 125, 125, 1.0);

const DefaultPaddingHorizontal = 12.0;

const appBarTextStyle = TextStyle(
  fontSize: mediumTextSize,
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  color: TextColorLight,
);

const titleTextStyle = TextStyle(
  fontSize: largeTextSize,
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  color: TextColorDark,
);

const subtitleTextStyle = TextStyle(
  fontSize: mediumTextSize,
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  color: TextColorAccent,
);

const captionTextStyle = TextStyle(
  fontSize: smallTextSize,
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  color: TextColorDark,
);

const body1TextStyle = TextStyle(
  fontSize: mediumTextSize,
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  color: TextColorDark,
);
