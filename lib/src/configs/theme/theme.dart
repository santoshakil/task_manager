import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dark/dark_theme.dart';
import 'light/light_theme.dart';

final themeProvider = Provider((_) => themes.light.data);

enum themes { dark, light }

extension ThemeExtension on themes {
  String get themeName {
    switch (this) {
      case themes.dark:
        return 'Dark';
      case themes.light:
        return 'Light';
    }
  }

  ThemeData get data {
    switch (this) {
      case themes.dark:
        return darkTheme;
      case themes.light:
        return lightTheme;
    }
  }
}

const bigBBoldText = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w900,
);

const smallBBoldText = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w900,
);

const smallBoldText = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
);
