import 'package:flutter/material.dart';
import 'package:task_manager/src/localizations/localizations.dart';

import '../../../../../components/dropdown/dropdown.dart';
import '../../../../../configs/theme/theme.dart';

class TaskHeader extends StatelessWidget {
  const TaskHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Text(t.tasks, style: vBigBBoldText),
          const Spacer(),
          KDropDown(title: t.today, icon: Icons.work_outline_rounded),
          const SizedBox(width: 8),
          KDropDown(title: t.filter, icon: Icons.filter_alt_outlined),
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
