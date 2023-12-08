import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;

  }
}
//extension to mediaQueryValues
extension MediaQueryValues on BuildContext{
  double get height=>MediaQuery.of(this).size.height;
  double get width=>MediaQuery.of(this).size.width;
  double get toPadding=>MediaQuery.of(this).viewPadding.top;
  double get bottom=>MediaQuery.of(this).viewPadding.bottom;
}