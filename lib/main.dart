// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator_app/Screens/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Bmi Calculator",
  debugShowCheckedModeBanner: false,
  home: HomePage(),
  theme: ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xff0a0321),
    accentColor: Colors.lightBlue,
    textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
      centerTitle: true,
      color: Color(0xff0a0321)
    ),
  ),
));
