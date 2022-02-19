import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.dark,
  fontFamily: 'Nunito',
  appBarTheme: const AppBarTheme(
    elevation: 1,
    color: Colors.black87,
    iconTheme: IconThemeData(color: Colors.teal),
  ),
  secondaryHeaderColor: Colors.teal,
  iconTheme: const IconThemeData(color: Colors.blueGrey),
  shadowColor: Colors.black12,
);
