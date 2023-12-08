import 'package:flutter/material.dart';

import '../../../config/size_config.dart';
import '../../../config/theme.dart';
import '../widgets/build_order_widget.dart';

class SpellsDamageSection extends StatelessWidget {
  const SpellsDamageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          children: [
            Text(
              'Summoner Spells',
              style: TextStyle(
                color: textColor,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                BuildOrderWidget(image: "assets/spell_1.png"),
                BuildOrderWidget(image: "assets/spell_2.png"),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Damage Breakdown',
              style: TextStyle(
                color: textColor,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.4,
              child: Row(
                children: [
                  Container(
                    width: SizeConfig.screenWidth! * 0.25,
                    height: 5,
                    decoration: BoxDecoration(
                      color: yellowColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 3),
                  Container(
                    width: SizeConfig.screenWidth! * 0.10,
                    height: 5,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 3),
                  Container(
                    width: SizeConfig.screenWidth! * 0.03,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.4,
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.25,
                    child: const Text(
                      '80% AP',
                      style: TextStyle(
                        color: yellowColor,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 3),
                  SizedBox(
                      width: SizeConfig.screenWidth! * 0.10,
                      child: const Text(
                        '17%',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                        ),
                      )),
                  const SizedBox(width: 3),
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.03,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
