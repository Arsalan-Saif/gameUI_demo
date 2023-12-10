import 'package:flutter/material.dart';

Container lineContainer({double margin = 10}) {
  return Container(
    margin: EdgeInsets.only(
      top: margin,
    ),
    // width: double.maxFinite,
    height: 1,
    color: Colors.white.withOpacity(0.07),
  );
}
