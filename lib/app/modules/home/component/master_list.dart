import 'package:flutter/material.dart';

import '../../../global_widgets/line_container.dart';
import '../widgets/player_stat_card.dart';

class MasterListSection extends StatelessWidget {
  const MasterListSection({
    this.padding = 16,
    super.key,
  });
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        children: [
          const PlayerStatCard(number: "1", statValue: "2030"),
          lineContainer(),
          const SizedBox(height: 10),
          const PlayerStatCard(number: "2", statValue: "1550"),
          lineContainer(),
          const SizedBox(height: 10),
          const PlayerStatCard(number: "3", statValue: "1550"),
          lineContainer(),
          const SizedBox(height: 10),
          const PlayerStatCard(number: "4", statValue: "1550"),
          lineContainer(),
          const SizedBox(height: 10),
          const PlayerStatCard(number: "5", statValue: "1550")
        ],
      ),
    );
  }
}
