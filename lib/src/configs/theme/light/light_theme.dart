import 'package:flutter/material.dart';

final lightTheme = ThemeData.light().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(
    elevation: 1,
    color: Colors.teal.shade700,
    iconTheme: const IconThemeData(color: Colors.black),
  ),
);
