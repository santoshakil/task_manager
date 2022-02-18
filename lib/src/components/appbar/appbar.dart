import 'package:flutter/material.dart'
    show AppBar, BuildContext, Key, Size, StatelessWidget, Text, Widget;

import '../../localizations/localizations.dart' show t;

class KAppBar extends StatelessWidget {
  const KAppBar({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? t.tasks),
    );
  }
}

const appBarSize = Size.fromHeight(50);
