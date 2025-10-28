import 'package:flutter/material.dart';
import 'package:mr_ui/screens/about/my_container.dart';
import 'package:mr_ui/style/color_text_style.dart';
import 'package:mr_ui/style/details_card_style.dart';

import '../../style/app_bar_container_style.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarContainer(
          title: "Name",
          description: "demo12@gmail.com\n+8801732849217",
          color: yellowColor,
          height: 70,
          width: 70,
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          trailingIcon: Icons.search_rounded,
          image:
              "https://img.freepik.com/free-photo/abstract-luxury-gradient-blue-background-smooth-dark-blue-with-black-vignette-studio-banner_1258-101947.jpg?semt=ais_hybrid&w=740&q=80",
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("About me", style: Style.h1.copyWith(fontSize: 30)),
              SizedBox(height: 5),
              Text(
                "Knowledge, Skills, Works",
                style: Style.h4.copyWith(color: greyColor),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        StyleCard(
          title: "Skills",
          description: "UI/UX design, App Development, AI Integration",
          boxColor: yellowColor,
          child: MyContainer(icon: Icons.circle_outlined, color: yellowColor),
        ),
        const SizedBox(height: 20),
        StyleCard(
          title: "Programing Knowledge",
          description: "C, Python, Java, Dart, Kotlin, Flutter",
          boxColor: greenColor,
          child: MyContainer(icon: Icons.square_outlined, color: greenColor),
        ),
        const SizedBox(height: 20),
        StyleCard(
          title: "Works",
          description: "To-do App, Quiz0 App, Mr.UI, Straw Hats",
          boxColor: blueGreyColor,
          child: MyContainer(
            icon: Icons.change_history_outlined,
            color: blueGreyColor,
          ),
        ),
      ],
    );
  }
}
