import 'package:flutter/material.dart';

ThemeData themeEnglish =ThemeData(
  primaryColor: Colors.black,
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
      headlineLarge:TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold
      ),
      bodyMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          height: 2),
      bodyLarge:TextStyle(fontSize: 26,fontWeight: FontWeight.bold)
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic =ThemeData(
  primaryColor: Colors.black,
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headlineLarge:TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold
      ),
      bodyMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          height: 2),
      bodyLarge:TextStyle(fontSize: 26,fontWeight: FontWeight.bold)
  ),
  primarySwatch: Colors.blue,
);

