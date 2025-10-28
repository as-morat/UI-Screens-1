import 'package:flutter/material.dart';
import 'package:mr_ui/screens/person/my_card.dart';
import 'package:mr_ui/screens/person/my_container.dart';
import 'package:mr_ui/style/color_text_style.dart';
import 'package:mr_ui/style/details_card_style.dart';

import '../../style/app_bar_container_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarContainer(
          color: indigoColor,
          height: 70,
          width: 70,
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          trailingIcon: Icons.notifications_none_rounded,
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7gYScBjrRVfwUe_bK2suaahxbMaVxoZnpQw&s",
          child: Positioned(
            bottom: 5,
            left: -1,
            child: Container(
              height: 160,
              width: 340,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: orangeColor,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/8090/8090406.png",
                    ),
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Name",
                    textAlign: TextAlign.end,
                    style: Style.h3.copyWith(color: whiteColor),
                  ),
                  Text(
                    "Email Address",
                    textAlign: TextAlign.end,
                    style: Style.h5.copyWith(color: whiteColor),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("History", style: Style.h1),
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyCard(color: lightBlueColor, day: "Sunday", time: "8:30"),
              MyCard(
                color: blueGreyColor.withValues(alpha: .6),
                day: "Monday",
                time: "10:30",
              ),
              MyCard(
                color: blueGreyColor.withValues(alpha: .8),
                day: "Tuesday",
                time: "9:30",
              ),
              MyCard(color: blueGreyColor, day: "Wednesday", time: "12:00"),
              MyCard(
                color: indigoColor.withValues(alpha: .6),
                day: "Thursday",
                time: "6:30",
              ),
              MyCard(
                color: indigoColor.withValues(alpha: .8),
                day: "Friday",
                time: "4:00",
              ),
              MyCard(color: indigoColor, day: "Saturday", time: "1:45"),
            ],
          ),
        ),
        const SizedBox(height: 50),
        StyleCard(
          title: "List of Activity",
          description: "- Daily study minimum 12 hours for life career",
          boxColor: whiteColor,
          child: MyContainer(
            icon: Icons.list_rounded,
            title: "Activity",
            color: orangeColor,
          ),
        ),
        SizedBox(height: 20),
        StyleCard(
          title: "List of Work",
          description: "- It's too slow progressing but good to stay continue",
          boxColor: whiteColor,
          child: MyContainer(
            icon: Icons.verified,
            title: "Completed",
            color: greenColor,
          ),
        ),
      ],
    );
  }
}
