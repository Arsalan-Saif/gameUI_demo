import 'package:flutter/material.dart';
import 'package:game_u_i_demo/app/config/size_config.dart';

import '../../../config/theme.dart';
import '../widgets/build_order_widget.dart';
import '../widgets/ruines_item.dart';

class RunesSection extends StatelessWidget {
  const RunesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.19, 1.22),
            radius: 0.32,
            colors: [Color(0x770C232C), Color(0xFF0D242C)],
          ),
          image: DecorationImage(
              image: AssetImage("assets/Rectangle 193.png"),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Runes',
            style: TextStyle(
              color: textColor,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Domincation',
            style: TextStyle(
              color: primaryColor,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const RunesItem(
                  image: "assets/runes_1.png", bgColor: Color(0xFF45212E)),
              Container(
                width: 16,
                height: 4,
                decoration: BoxDecoration(
                  color: primarySwatch.shade300,
                ),
              ),
              const BuildOrderWidget(
                image: "assets/runes_2.png",
                borderShade: Color(0xFF45212E),
              ),
              Container(
                width: 16,
                height: 4,
                decoration: BoxDecoration(
                  color: primarySwatch.shade300,
                ),
              ),
              const BuildOrderWidget(
                image: "assets/runes_3.png",
                borderShade: Color(0xFF45212E),
              ),
              Container(
                width: 16,
                height: 4,
                decoration: BoxDecoration(
                  color: primarySwatch.shade300,
                ),
              ),
              const BuildOrderWidget(
                image: "assets/runes_4.png",
                borderShade: Color(0xFF45212E),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Secery',
                    style: TextStyle(
                      color: Color(0xFF775F93),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const RunesItem(
                        image: "assets/runes_5.png",
                        bgColor: Color(0xFF372145),
                        borderSideColor: Color(0xFF775F93),
                      ),
                      Container(
                        width: SizeConfig.screenWidth! > 360 ? 16 : 10,
                        height: 4,
                        decoration: const BoxDecoration(
                          color: Color(0xFF755B9A), //#755B9A
                          // borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const BuildOrderWidget(
                        image: "assets/runes_2.png",
                        borderShade: Color(0xFF372145),
                      ),
                      Container(
                        width: SizeConfig.screenWidth! > 360 ? 16 : 10,
                        height: 4,
                        decoration: const BoxDecoration(
                          color: Color(0xFF755B9A),
                        ),
                      ),
                      const BuildOrderWidget(
                        image: "assets/runes_3.png",
                        borderShade: Color(0xFF372145),
                      ),
                    ],
                  ),
                ],
              ),
              // const SizedBox(width: 10),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Shards',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const BuildOrderWidget(
                        image: "assets/shard_1.png",
                        borderShade: borderColor2,
                      ),
                      Container(
                        width: 12,
                        height: 4,
                        decoration: const BoxDecoration(
                          color: borderColor2,
                        ),
                      ),
                      const BuildOrderWidget(
                          image: "assets/shard_2.png",
                          borderShade: borderColor2),
                      Container(
                        width: 12,
                        height: 4,
                        decoration: const BoxDecoration(
                          color: borderColor2,
                        ),
                      ),
                      const BuildOrderWidget(
                          image: "assets/shard_3.png",
                          borderShade: borderColor2),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // Spacer(),
          // const SizedBox(height: 10),
          // lineContainer(),
        ],
      ),
    );
  }
}
