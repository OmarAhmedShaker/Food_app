import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'contants.dart';

ThemeData buildThemeData() {
  return ThemeData(
    primaryColor: kAccentColor,
    scaffoldBackgroundColor: kBgColor,
    fontFamily: "SF Pro Text",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
