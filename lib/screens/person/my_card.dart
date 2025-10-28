import 'package:flutter/material.dart';
import 'package:mr_ui/style/color_text_style.dart';

class MyCard extends StatelessWidget {
  final String time;
  final String day;
  final Color color;

  const MyCard({
    super.key,
    required this.color,
    required this.day,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: Style.h2.copyWith(color: whiteColor)),
          SizedBox(height: 2),
          Text(day, style: Style.h5.copyWith(color: whiteColor)),
        ],
      ),
    );
  }
}
