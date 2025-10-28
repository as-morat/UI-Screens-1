import 'package:flutter/material.dart';
import 'package:mr_ui/style/app_style.dart';

class History extends StatelessWidget {
  final String time;
  final String day;
  final Color color;

  const History({
    super.key,
    required this.color,
    required this.day,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 85,
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
        children: [Text(time, style: Style.headLineStyle3.copyWith(color: whiteColor)), SizedBox(height: 2), Text(day, style: Style.headLineStyle1.copyWith(color: whiteColor),)],
      ),
    );
  }
}
