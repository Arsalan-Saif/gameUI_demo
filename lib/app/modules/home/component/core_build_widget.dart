import 'package:flutter/material.dart';

import '../../../config/theme.dart';
import '../../../global_widgets/line_container.dart';
import 'build_order_list.dart';
import 'runes_stats_widget.dart';
import 'skill_order_widget.dart';
import 'spells_damage_widget.dart';

class CoreBuildSection extends StatelessWidget {
  const CoreBuildSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'Core Build Order',
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      const SizedBox(height: 8),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: BuildOrderList(),
      ),
      const SizedBox(height: 6),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: lineContainer(),
      ),
      const SizedBox(height: 16),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SpellsDamageSection(),
      ),
      const SizedBox(height: 6),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: lineContainer(),
      ),
      const RunesSection(),
      const SkillOrderSection(),
    ]);
  }
}
