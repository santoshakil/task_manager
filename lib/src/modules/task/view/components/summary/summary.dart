import 'package:flutter/material.dart';
import 'package:task_manager/src/configs/theme/theme.dart';

import '../../../../../localizations/localizations.dart';

class TaskSummaryView extends StatelessWidget {
  const TaskSummaryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 10, 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(t.taskSummery, style: bBoldText),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SummaryCard(
                  icon: Icons.work_outline_rounded,
                  title: t.projects,
                  subtitle: '23',
                  color: Theme.of(context).unselectedWidgetColor,
                ),
                const SizedBox(width: 10),
                SummaryCard(
                  icon: Icons.assignment_rounded,
                  title: t.asigned,
                  subtitle: '65',
                ),
                const SizedBox(width: 10),
                SummaryCard(
                  icon: Icons.assignment_rounded,
                  title: t.complated,
                  subtitle: '34',
                  color: Theme.of(context).dialogBackgroundColor,
                  accentColor: Theme.of(context).primaryColor,
                ),
                const VerticalDivider(width: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.accentColor,
    this.color,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subtitle;
  final Color? color;
  final Color? accentColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: accentColor ?? Theme.of(context).scaffoldBackgroundColor,
              size: 30,
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: boldText.copyWith(
                color: accentColor ?? Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: mediumBBoldText.copyWith(
                color: accentColor ?? Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
