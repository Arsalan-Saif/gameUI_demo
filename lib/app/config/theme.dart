import 'package:flutter/material.dart';

//main colors
const primaryColor = Color(0xffE43044);

const primaryBackgroundColor = Color(0xff0D242C); //
const scaffholdBackgroundColor = Color(0xff00080D);

const borderColor = Color(0xFF122A33);

const borderColor2 = Color(0xff22404a);
//
const borderColorDark = Color(0xFF0D242C);

const textColor = Color(0xFFB3BABD);
const textColorDark = Color(0xFF4D5F66);

const secondaryTextColor = Color(0xFF48C5BD);

const primaryDarkColor = Color(0xFF01131B);
const secondaryColor = Color(0xFF48C5BD);

const grayColor = Color(0xFFC1C5C6);
const yellowColor = Color(0xFFFAB069);

const grayShade50 = Color(0xFFF9FAFB); //F9FAFB

const lightGrayColor = Color(0xFFE5E5EA);

const MaterialColor grey = MaterialColor(
  0xff4b5563, //
  <int, Color>{
    50: Color(0xfff9fafb), //10%
    100: Color(0xfff3f4f6), //20%
    200: Color(0xffd1d5db), //30%
    300: Color(0xffd1d5db), //40%
    400: Color(0xff9ca3af), //50%
    500: Color(0xFF6b7280), //60%
    600: Color(0xff4b5563), //70%
    700: Color(0xff374151), //80%
    800: Color(0xff1f2937), //90%
    900: Color(0xff111827), //100%
    950: Color(0xff030712), //100%
  },
);
const MaterialColor primarySwatch = MaterialColor(
  0xffE43044, //
  <int, Color>{
    50: Color(0xffcd2b3d), //10%
    100: Color(0xffb62636), //20%
    200: Color(0xffa02230), //30%
    300: Color(0xff863342), //40%
    400: Color(0xff721822), //50%
    500: Color(0xFF5b131b), //60%
    600: Color(0xff440e14), //70%
    700: Color(0xff2e0a0e), //80%
    800: Color(0xff170507), //90%
    900: Color(0xff000000), //100%
  },
);

//shadows
// List<BoxShadow> shadowList = [
//   BoxShadow(
//       color: grayColor.withOpacity(0.35),
//       blurRadius: 4,
//       offset: const Offset(0, 4))
// ];
List<BoxShadow> shadowList = [
  BoxShadow(
    color: primaryColor.withAlpha(50),
    blurRadius: 9.0,
    // blurStyle: BlurStyle.inner,
    spreadRadius: 8.0,
    offset: const Offset(
      0.0,
      -6.0,
    ),
  ),
];
// List<BoxShadow> shadowList3 = [
//   BoxShadow(
//       // blurStyle: BlurStyle.solid,
//       color: grayColor.withOpacity(0.90),
//       blurRadius: 15,
//       offset: const Offset(-2, -2))
// ];
// List<BoxShadow> innerShadowList = [
//   BoxShadow(color: grayColor.withOpacity(0.5), blurRadius: 1, spreadRadius: 0),
//   const BoxShadow(color: Colors.white, blurRadius: 10, spreadRadius: 5),
// ];

// List<BoxShadow> shadowListMain2 = [
//   BoxShadow(
//       color: Colors.grey.shade800, blurRadius: 60, offset: const Offset(0, 2))
// ];

//! Only use these shdows
// List<BoxShadow> shadowListMain = [
//   const BoxShadow(
//       color: Color(0x44A3A8B1), blurRadius: 60, offset: Offset(0, 20))
// ];
// List<BoxShadow> shadowListSM2 = [
//   const BoxShadow(
//       color: Color(0x44A3A8B1), blurRadius: 3, offset: Offset(0, -2)),
//   const BoxShadow(color: Color(0x44A3A8B1), blurRadius: 3, offset: Offset(0, 2))
// ];
// List<BoxShadow> shadowListSM = [
//   const BoxShadow(color: Color(0x44A3A8B1), blurRadius: 3, offset: Offset(0, 2))
// ];

// const mainHeader = TextStyle(
//     fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Copperplate');
