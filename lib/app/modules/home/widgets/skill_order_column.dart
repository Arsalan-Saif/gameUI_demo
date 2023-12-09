import 'package:flutter/material.dart';

import '../../../config/theme.dart';
import 'skill_order_type.dart';

class SkillOrderColumn extends StatelessWidget {
  const SkillOrderColumn({
    required this.number,
    required this.type,
    super.key,
  });
  final String number;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Column(
        children: [
          Text(
            number,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 4),
          SkillOrderType(
            type: type != "Q" ? "" : "Q",
            size: 16,
            color: primarySwatch.shade200,
            borderStyleColor: primaryColor,
          ),
          const SizedBox(height: 4),
          SkillOrderType(
              type: type != "W" ? "" : "W",
              size: 16,
              color: const Color(0xFF6BD6D2),
              borderStyleColor: const Color(0xFF6BD6D2)),
          const SizedBox(height: 4),
          SkillOrderType(
              type: type != "E" ? "" : "E",
              size: 16,
              color: const Color(0xFF66B1F9),
              borderStyleColor: const Color(0xFF66B1F9)),
          const SizedBox(height: 4),
          SkillOrderType(
              type: type != "R" ? "" : "R",
              size: 16,
              color: const Color(0xFFE4BF77),
              borderStyleColor: const Color(0xFFE4BF77)),
        ],
      ),
    );
  }
}
