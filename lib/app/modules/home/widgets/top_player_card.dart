import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class TopPlayerStatCard extends StatelessWidget {
  const TopPlayerStatCard({
    this.name = 'SirRaydus',
    required this.number,
    required this.statValue,
    required this.laneValue,
    required this.matchesValue,
    super.key,
  });
  final String number;
  final String name;
  final String statValue;
  final String laneValue;
  final String matchesValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
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
                Container(
                  width: 16,
                  height: 16,
                  margin: const EdgeInsets.only(right: 5),
                  decoration: const ShapeDecoration(
                    color: borderColorDark,
                    image: DecorationImage(
                        image: AssetImage('assets/master_icon.png')),
                    shape: OvalBorder(
                      side: BorderSide(width: 0.76, color: Color(0xFFB3BABD)),
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '$matchesValue matches',
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '$laneValue% in lane',
              style: const TextStyle(
                color: secondaryTextColor,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '$statValue% in Games',
              style: const TextStyle(
                color: textColor,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
      ],
    );
  }
}
