import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../components/appbar/appbar.dart';
import '../../../localizations/localizations.dart';

class TaskView extends StatelessWidget {
  const TaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    t = AppLocalizations.of(context)!;
    return const Scaffold(
      appBar: PreferredSize(preferredSize: appBarSize, child: KAppBar()),
      body: Text('Task'),
    );
  }
}
