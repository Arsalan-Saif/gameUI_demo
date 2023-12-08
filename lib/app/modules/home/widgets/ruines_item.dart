import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class RunesItem extends StatelessWidget {
  const RunesItem({
    required this.image,
    required this.bgColor,
    this.borderSideColor = primaryColor,
    super.key,
  });
  final String image;
  final Color bgColor;
  final Color borderSideColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: ShapeDecoration(
        color: bgColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: borderSideColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: SizedBox(
        height: 32,
        width: 32,
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
