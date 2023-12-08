import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class BuildOrderWidget extends StatelessWidget {
  const BuildOrderWidget({
    required this.image,
    required this.label,
    super.key,
  });
  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColor2,
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
          Text(
            label,
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
