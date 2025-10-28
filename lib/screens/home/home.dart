import 'package:flutter/material.dart';
import 'package:mr_ui/screens/home/my_card.dart';
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
                MyCard(
                  y: 40,
                  color: orangeColor.withValues(alpha: .8),
                  title: "Projects",
                  body: "To-Do App, Quiz0, Mr.UI, Straw Hats",
                  end: "Ongoing",
                ),
                const SizedBox(height: 20),
                MyCard(
                  y: 40,
                  color: whiteColor,
                  title: "Learning",
                  body: "Kotlin, Jetpack Compose, Flutter",
                  end: "Progressing",
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                MyCard(
                  y: -5,
                  color: whiteColor,
                  title: "Goals",
                  body: "Become full-stack Android dev",
                  end: "Pending",
                ),
                const SizedBox(height: 20),
                MyCard(
                  y: -5,
                  color: orangeColor.withValues(alpha: .8),
                  title: "AI",
                  body: "Exploring ML, ChatGPT API, Smart Apps",
                  end: "Learning",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
