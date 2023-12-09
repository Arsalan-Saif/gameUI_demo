import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({
    required this.image,
    required this.label,
    super.key,
  });
  final String label;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: 27,
          height: 27,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: borderColor2),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        Container(
          width: 16,
          height: 16,
          // margin: const EdgeInsets.only(right: 5),
          decoration: ShapeDecoration(
            color: borderColorDark,
            shape: RoundedRectangleBorder(
              // side: const BorderSide(
              //     width: 1, color: borderColor2),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: FittedBox(
            child: Text(label),
          ),
        )
      ],
    );
  }
}
