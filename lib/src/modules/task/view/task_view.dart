import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:task_manager/src/modules/task/view/components/header/header.dart';

import '../../../localizations/localizations.dart';
import 'components/summary/summary.dart';

class TaskView extends StatelessWidget {
  const TaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    t = AppLocalizations.of(context)!;
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (_, i) => _items[i],
      ),
    );
  }
}

final _items = [
  const TaskHeader(),
  const TaskSummaryView(),
];
