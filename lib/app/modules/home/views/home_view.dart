import 'package:flutter/material.dart';
import 'package:game_u_i_demo/app/config/size_config.dart';
import 'package:game_u_i_demo/app/config/theme.dart';
import 'package:game_u_i_demo/app/global_widgets/line_container.dart';
import 'package:game_u_i_demo/app/modules/home/widgets/build_order_widget.dart';

import 'package:get/get.dart';

import '../component/build_order_list.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custome_app_bar.dart';
import '../component/spells_damage_widget.dart';
import '../widgets/ruines_item.dart';
import '../widgets/state_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const CustomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomeChip(
                      label: "All",
                      leading: Image.asset(
                        "assets/star_icon.png",
                        color: Colors.white,
                      ),
                    ),
                    const CustomeChip(
                      label: "Add a Matchup",
                    ),
                    CustomeChip(
                      label: "Chanllnger",
                      leading: Image.asset(
                        "assets/rank-iron.png",
                        color: Colors.white,
                      ),
                    ), //
                    CustomeChip(
                      label: "Queue",
                      leading: Image.asset(
                        "assets/rank-challenger.png",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Stats',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // SizedBox(height: 4),
                  const Text(
                    'State for the current season',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StatsWidget(stat: "Win Rate", statValue: "55"),
                        StatsWidget(stat: "Ban Rate", statValue: "2.22"),
                        StatsWidget(stat: "Ban Rate", statValue: "2.22"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Core Build',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // SizedBox(height: 4),
                  const Text(
                    'State for the current season',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.maxFinite,
                    // height: 200,
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: primaryBackgroundColor,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: borderColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Core Build Order',
                            style: TextStyle(
                              color: textColor,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const BuildOrderList(),
                          const SizedBox(height: 6),
                          lineContainer(),
                          const SizedBox(height: 16),
                          const SpellsDamageSection(),
                          const SizedBox(height: 6),
                          lineContainer(),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      image: "assets/runes_1.png",
                                      bgColor: Color(0xFF45212E)),
                                  Container(
                                    width: 16,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: primarySwatch.shade300,
                                      // borderRadius: BorderRadius.circular(4),
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
                                      // borderRadius: BorderRadius.circular(4),
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
                                      // borderRadius: BorderRadius.circular(4),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            width: 16,
                                            height: 4,
                                            decoration: const BoxDecoration(
                                              color:
                                                  Color(0xFF755B9A), //#755B9A
                                              // borderRadius: BorderRadius.circular(4),
                                            ),
                                          ),
                                          const BuildOrderWidget(
                                            image: "assets/runes_2.png",
                                            borderShade: Color(0xFF372145),
                                          ),
                                          Container(
                                            width: 16,
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
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              color: borderColor2, //#755B9A
                                              // borderRadius: BorderRadius.circular(4),
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
                            ],
                          )
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
