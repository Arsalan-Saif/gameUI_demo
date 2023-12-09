import 'package:flutter/material.dart';

import '../widgets/build_order_widget.dart';

class BuildOrderList extends StatelessWidget {
  const BuildOrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      runSpacing: 10,
      children: [
        BuildOrderWidget(label: 'Starting', image: "assets/build_1.png"),
        BuildOrderWidget(label: '1st', image: "assets/build_2.png"),
        BuildOrderWidget(label: '2st', image: "assets/build_3.png"),
        BuildOrderWidget(label: '3st', image: "assets/build_4.png"),
        BuildOrderWidget(label: '4st', image: "assets/build_5.png"),
        BuildOrderWidget(label: '5st', image: "assets/build_6.png"),
        BuildOrderWidget(label: '6st', image: "assets/build_7.png"),
      ],
    );
  }
}
