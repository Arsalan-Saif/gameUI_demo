import 'package:flutter/material.dart';

import '../config/theme.dart';

class CustomeContainer extends StatelessWidget {
  const CustomeContainer({
    required this.child,
    this.padding = 16,
    super.key,
  });
  final Widget child;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: padding),
      decoration: ShapeDecoration(
        color: primaryBackgroundColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: child,
    );
  }
}
