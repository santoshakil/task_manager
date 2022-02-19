import 'package:flutter/material.dart';

import '../../../../../configs/theme/theme.dart';
import '../../../../../localizations/localizations.dart';
import '../summary/summary.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 10, 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(' ' + t.tasks, style: bBoldText),
          const SizedBox(height: 10),
          ListView.builder(
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (_, i) {
              return Container(
                height: 200,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProjectEstimateView(),
                    VerticalDivider(width: 30),
                    TeamView(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
