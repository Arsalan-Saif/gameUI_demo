import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class PlayerStatCard extends StatelessWidget {
  const PlayerStatCard({
    this.name = 'SirRaydus',
    required this.number,
    required this.statValue,
    super.key,
  });
  final String number;
  final String name;
  final String statValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0.12,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: yellowColor),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/avatar_$number.png'))),
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        Text(
          '$statValue Games',
          style: const TextStyle(
            color: textColor,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
