import 'package:flutter/material.dart';
import 'package:game_u_i_demo/app/config/size_config.dart';
import 'package:game_u_i_demo/app/config/theme.dart';
import 'package:get/get.dart';

import '../component/core_build_widget.dart';
import '../controllers/home_controller.dart';
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
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: ShapeDecoration(
                      color: primaryBackgroundColor,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: borderColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const CoreBuildSection(),
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
