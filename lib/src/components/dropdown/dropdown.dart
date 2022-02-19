import 'package:flutter/material.dart';

import '../../configs/theme/theme.dart';

class KDropDown extends StatelessWidget {
  const KDropDown({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(
          border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(icon, size: 18),
            const SizedBox(width: 5),
            Text(title, style: smallBoldText),
            const Icon(Icons.arrow_drop_down_rounded),
          ],
        ),
      ),
    );
  }
}
