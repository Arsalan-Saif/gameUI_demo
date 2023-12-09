import 'package:flutter/material.dart';
import 'package:game_u_i_demo/app/config/size_config.dart';
import 'package:game_u_i_demo/app/config/theme.dart';
import 'package:game_u_i_demo/app/modules/home/component/top_players_list.dart';
import 'package:get/get.dart';

import '../../../global_widgets/custome_container.dart';
import '../component/core_build_widget.dart';
import '../component/master_list.dart';
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
      // appBar: const CustomeAppBar(),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [CustomeAppBar()];
        },
        body: BodyWidget(),

        // builder: (context) {
        //   return BodyWidget();
        // }
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Stats',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // SizedBox(height: 4),
                Text(
                  'State for the current season',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StatsWidget(stat: "Win Rate", statValue: "55"),
                      StatsWidget(stat: "Ban Rate", statValue: "2.22"),
                      StatsWidget(stat: "Ban Rate", statValue: "2.22"),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Core Build',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // SizedBox(height: 4),
                Text(
                  'State for the current season',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                CustomeContainer(child: CoreBuildSection()),
                SizedBox(height: 16),
                Text(
                  'Lee Sin Masters',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // SizedBox(height: 4),
                Text(
                  'Latest news for the game',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                CustomeContainer(padding: 11, child: MasterListSection()),
                SizedBox(height: 16),
                Text(
                  'Top Players in the app',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // SizedBox(height: 4),
                Text(
                  'Latest news for the game',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                CustomeContainer(padding: 11, child: TopPlayersListSection()),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
