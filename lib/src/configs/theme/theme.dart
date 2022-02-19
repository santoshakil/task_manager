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

const vBigBBoldText = TextStyle(
  fontSize: 34,
  fontWeight: FontWeight.w900,
);

const bigBBoldText = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w900,
);

const mediumBBoldText = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w900,
);

const bBoldText = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w900,
);

const boldText = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
);
const smallBBoldText = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w900,
);

const smallBoldText = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
);
