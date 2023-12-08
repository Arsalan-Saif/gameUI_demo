import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class CustomeChip extends StatelessWidget {
  const CustomeChip({
    required this.label,
    this.leading,
    super.key,
  });
  final String label;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
          padding: const EdgeInsets.all(0),
          backgroundColor: primaryDarkColor,
          selectedColor: primaryDarkColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(width: 1, color: borderColorDark)),
          showCheckmark: false,
          label: Row(
            children: [
              leading ?? Container(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Image.asset(
                "assets/arrow_down_icon.png",
                color: Colors.white,
              ),
            ],
          ),
          selected: true),
    );
  }
}
