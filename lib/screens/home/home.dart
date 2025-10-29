import 'package:flutter/material.dart';
import 'package:mr_ui/style/app_bar_container_style.dart';
import 'package:mr_ui/style/color_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarContainer(
          title: "Name",
          description: "Wish you a great day!",
          color: indigoColor,
          height: 70,
          width: 70,
          leadingIcon: Icons.settings_outlined,
          trailingIcon: Icons.menu,
          image:
              "https://img.freepik.com/free-photo/orange-background_23-2147674307.jpg?semt=ais_hybrid&w=740&q=80",
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                _myCard(
                  40,
                  orangeColor.withValues(alpha: .8),
                  "Projects",
                  "To-Do App, Quiz0, Mr.UI, Straw Hats",
                  "Ongoing",
                ),
                const SizedBox(height: 20),
                _myCard(
                  40,
                  whiteColor,
                  "Learning",
                  "Kotlin, Jetpack Compose, Flutter",
                  "Progressing",
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                _myCard(
                  -5,
                  whiteColor,
                  "Goals",
                  "Become full-stack Android dev",
                  "Pending",
                ),
                const SizedBox(height: 20),
                _myCard(
                  -5,
                  orangeColor.withValues(alpha: .8),
                  "AI",
                  "Exploring ML, ChatGPT API, Smart Apps",
                  "Learning",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _myCard(double y, Color color, String title, String body, String end){

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
