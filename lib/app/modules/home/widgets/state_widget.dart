import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class StatsWidget extends StatelessWidget {
  const StatsWidget({
    required this.stat,
    required this.statValue,
    super.key,
  });
  final String statValue;
  final String stat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 16),
      decoration: ShapeDecoration(
        color: primaryBackgroundColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/line_vector.png"),
          const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$statValue %',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
              Text(
                stat,
                style: const TextStyle(
                  color: primaryColor,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
