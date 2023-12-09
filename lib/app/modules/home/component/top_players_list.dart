import 'package:flutter/material.dart';
import 'package:game_u_i_demo/app/config/theme.dart';
import 'package:game_u_i_demo/app/global_widgets/fade_indexed_stack.dart';
import 'package:game_u_i_demo/app/modules/home/component/master_list.dart';
import 'package:get/get.dart';

import '../../../global_widgets/line_container.dart';
import '../controllers/home_controller.dart';
import '../widgets/top_player_card.dart';

class TopPlayersListSection extends GetView<HomeController> {
  const TopPlayersListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.all(4),
              decoration: ShapeDecoration(
                color: borderColor2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Obx(
                () => Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => controller.selected.value = 0,
                        child: AnimatedContainer(
                          curve: Curves.easeIn,
                          duration: const Duration(milliseconds: 500),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: ShapeDecoration(
                            color: controller.selected.value == 0
                                ? textColorDark
                                : Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Text(
                            'Lose lane aginst',
                            style: TextStyle(
                              color: controller.selected.value == 0
                                  ? Colors.white
                                  : textColor,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => controller.selected.value = 1,
                        child: AnimatedContainer(
                          curve: Curves.easeIn,
                          duration: const Duration(milliseconds: 500),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: ShapeDecoration(
                            color: controller.selected.value == 1
                                ? textColorDark
                                : Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Text(
                            'Win lane aginst',
                            style: TextStyle(
                              color: controller.selected.value == 1
                                  ? Colors.white
                                  : textColor,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Obx(() => FadeIndexedStack(
                index: controller.selected.value,
                children: [
                  Column(
                    children: [
                      const TopPlayerStatCard(
                          number: "1",
                          name: "Vi",
                          statValue: "50",
                          laneValue: "100",
                          matchesValue: "2"),
                      lineContainer(),
                      const SizedBox(height: 10),
                      const TopPlayerStatCard(
                          number: "7",
                          name: "Lee Sin",
                          statValue: "50",
                          laneValue: "100",
                          matchesValue: "2"),
                      lineContainer(),
                      const SizedBox(height: 10),
                      const TopPlayerStatCard(
                          number: "6",
                          name: "Diana",
                          statValue: "50",
                          laneValue: "100",
                          matchesValue: "2"),
                      lineContainer(),
                      const SizedBox(height: 10),
                      const TopPlayerStatCard(
                          number: "7",
                          name: "Lee Sin",
                          statValue: "50",
                          laneValue: "100",
                          matchesValue: "2"),
                      lineContainer(),
                      const SizedBox(height: 10),
                      const TopPlayerStatCard(
                          number: "6",
                          name: "Diana",
                          statValue: "50",
                          laneValue: "100",
                          matchesValue: "2")
                    ],
                  ),
                  const MasterListSection(padding: 0)
                ],
              ))
        ],
      ),
    );
  }
}
