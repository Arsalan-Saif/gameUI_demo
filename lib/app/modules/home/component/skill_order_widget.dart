import 'package:flutter/material.dart';

import '../../../config/theme.dart';
import '../widgets/skill_order_column.dart';
import '../widgets/skill_order_type.dart';

class SkillOrderSection extends StatelessWidget {
  const SkillOrderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skill Order',
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
              SkillOrderType(
                  type: "Q", size: 32, color: primarySwatch.shade200),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                child: Icon(Icons.arrow_forward_ios_outlined, size: 19),
              ),
              const SkillOrderType(
                  type: "E", size: 32, color: Color(0xFF66B1F9)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                child: Icon(Icons.arrow_forward_ios_outlined, size: 19),
              ),
              const SkillOrderType(
                  type: "W", size: 32, color: Color(0xFF6BD6D2)),
            ],
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset("assets/runes_2.png",
                              height: 16, width: 16)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset("assets/runes_3.png",
                              height: 16, width: 16)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset("assets/shard_1.png",
                              height: 16, width: 16)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset("assets/shard_2.png",
                              height: 16, width: 16)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset("assets/shard_3.png",
                              height: 16, width: 16)),
                    ),
                  ],
                ),
                const SkillOrderColumn(number: "1", type: "Q"),
                const SkillOrderColumn(number: "2", type: "E"),
                const SkillOrderColumn(number: "3", type: "W"),
                const SkillOrderColumn(number: "4", type: "Q"),
                const SkillOrderColumn(number: "5", type: "Q"),
                const SkillOrderColumn(number: "6", type: "R"),
                const SkillOrderColumn(number: "7", type: "Q"),
                const SkillOrderColumn(number: "8", type: "E"),
                const SkillOrderColumn(number: "9", type: ""),
                const SkillOrderColumn(number: "10", type: "E"),
                const SkillOrderColumn(number: "11", type: "R"),
                const SkillOrderColumn(number: "12", type: "E"),
                const SkillOrderColumn(number: "13", type: "E"),
                const SkillOrderColumn(number: "14", type: "W"),
                const SkillOrderColumn(number: "15", type: "W"),
                const SkillOrderColumn(number: "16", type: "R"),
                const SkillOrderColumn(number: "17", type: "W"),
                const SkillOrderColumn(number: "18", type: "W"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
