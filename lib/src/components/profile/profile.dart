import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/src/configs/theme/theme.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    Key? key,
    required this.asset,
    required this.name,
    this.pendingTask = 0,
    this.size = 50,
    this.onTap,
  }) : super(key: key);

  final String asset;
  final String name;
  final int pendingTask;
  final double size;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                asset,
                width: size - 4.0,
                height: size - 4.0,
              ),
              Text(name, style: smallBBoldText),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: pendingTask > 0
                    ? Colors.red.withOpacity(0.7)
                    : Colors.green.withOpacity(0.3),
                borderRadius: BorderRadius.circular(size / 4),
              ),
              child: pendingTask > 0
                  ? Text(
                      '$pendingTask',
                      style: const TextStyle(fontWeight: FontWeight.w900),
                    )
                  : const Icon(Icons.done_all_rounded, size: 15),
            ),
          ),
        ],
      ),
    );
  }
}
