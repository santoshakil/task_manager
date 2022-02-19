import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Nunito',
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: const AppBarTheme(
    elevation: 1,
    color: Colors.white10,
    iconTheme: IconThemeData(color: Colors.teal),
  ),
  scaffoldBackgroundColor: Colors.grey.shade100,
  cardColor: Colors.white,
  secondaryHeaderColor: Colors.teal,
  iconTheme: const IconThemeData(color: Colors.blueGrey),
  shadowColor: Colors.grey.shade100,
);
