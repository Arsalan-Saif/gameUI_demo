import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class BuildOrderWidget extends StatelessWidget {
  const BuildOrderWidget({
    required this.image,
    this.label,
    this.borderShade,
    super.key,
  });
  final String image;
  final String? label;
  final Color? borderShade;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: borderShade == null ? 10 : 0),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: borderShade ?? borderColor2,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
              ),
            ),
          ),
          const SizedBox(height: 4),
          if (label != null)
            Text(
              label ?? '',
              style: const TextStyle(
                color: textColor,
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            )
        ],
      ),
    );
  }
}
