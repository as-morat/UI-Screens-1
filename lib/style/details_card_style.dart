import 'package:flutter/material.dart';

import 'color_text_style.dart';

class StyleCard extends StatelessWidget {
  final Color boxColor;
  final dynamic child;
  final String title;
  final String description;

  const StyleCard({
    super.key,
    required this.boxColor,
    required this.child,
    required this.title,
    required this.description,
  });

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
          child: Center(child: child),
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
                Text(title, style: Style.h3),
                const SizedBox(height: 8),
                Text(description, style: Style.h4.copyWith(color: greyColor)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
