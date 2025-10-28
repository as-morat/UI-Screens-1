import 'package:flutter/material.dart';
import '../../style/color_text_style.dart';

class MyCard extends StatelessWidget {
  final double y;
  final Color color;
  final String title;
  final String body;
  final String end;

  const MyCard({
    super.key,
    required this.y,
    required this.color,
    required this.title,
    required this.body,
    required this.end,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = color.computeLuminance() < 0.5;
    final textColor = isDark ? Colors.white : Colors.black87;

    return Transform.translate(
      offset: Offset(0, y),
      child: Container(
        height: 200,
        width: 160,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Style.h1.copyWith(color: textColor)),
            Text(body, style: Style.h3.copyWith(color: textColor.withValues(alpha: 0.9),)),
            Align(alignment: Alignment.bottomRight, child: Text(end, style: Style.h5.copyWith(color: textColor.withValues(alpha: 0.8),),),),
          ],
        ),
      ),
    );
  }
}
