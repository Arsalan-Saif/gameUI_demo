import 'package:flutter/material.dart';
import 'package:game_u_i_demo/app/config/theme.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  ThemeData _darkTheme = ThemeData(
      hintColor: Colors.red,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: scaffholdBackgroundColor,
      primaryColor: primaryColor,
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        disabledColor: Colors.grey,
      ));
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      themeMode: ThemeMode.dark,
      darkTheme: _darkTheme,
      getPages: AppPages.routes,
    ),
  );
}
