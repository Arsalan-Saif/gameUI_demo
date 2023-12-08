import 'package:flutter/material.dart';
import 'package:game_u_i_demo/app/config/size_config.dart';
import 'package:game_u_i_demo/app/config/theme.dart';
import 'package:game_u_i_demo/app/global_widgets/line_container.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/build_order_widget.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custome_app_bar.dart';
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
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                BuildOrderWidget(
                                    label: 'Starting',
                                    image: "assets/build_1.png"),
                                BuildOrderWidget(
                                    label: '1st', image: "assets/build_2.png"),
                                BuildOrderWidget(
                                    label: '2st', image: "assets/build_3.png"),
                                BuildOrderWidget(
                                    label: '3st', image: "assets/build_4.png"),
                                BuildOrderWidget(
                                    label: '4st', image: "assets/build_5.png"),
                                BuildOrderWidget(
                                    label: '5st', image: "assets/build_6.png"),
                                BuildOrderWidget(
                                    label: '6st', image: "assets/build_7.png"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 6),
                          lineContainer(),
                          const SizedBox(height: 16),
                          const Row(
                            children: [
                              Column(
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
                                      BuildOrderWidget(
                                          label: '',
                                          image: "assets/spell_1.png"),
                                      BuildOrderWidget(
                                          label: '',
                                          image: "assets/spell_2.png"),
                                    ],
                                  )
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
