import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class SkillOrderType extends StatelessWidget {
  const SkillOrderType({
    required this.color,
    required this.size,
    required this.type,
    this.borderStyleColor,
    super.key,
  });
  final String type;
  final double size;
  final Color color;
  final Color? borderStyleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: ShapeDecoration(
          color: type != '' ? primaryDarkColor : borderColor,
          shape: RoundedRectangleBorder(
              side: type != ''
                  ? BorderSide(
                      width: 1, color: borderStyleColor ?? Colors.transparent)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(size > 25 ? 8 : 2)),
        ),
        child: FittedBox(
          child: Text(
            type,
            style: TextStyle(color: color),
          ),
        ));
  }
}
