import 'package:flutter/material.dart';

import 'app_style.dart';

class StyleCard extends StatelessWidget {

  final Color boxColor;
  final dynamic child;

  const StyleCard({super.key, required this.boxColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 110,
          width: 100,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: boxColor.withValues(alpha: 0.3),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: child
          ),
        ),

        const SizedBox(width: 15),

        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem ipsum",
                  style: Style.headLineStyle3.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Lorem ipsum dolor sit amet",
                  style: Style.headLineStyle4.copyWith(
                    color: greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
