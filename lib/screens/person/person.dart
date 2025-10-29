import 'package:flutter/material.dart';
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
              _myCard(lightBlueColor, "Sunday", "8:30"),
              _myCard(blueGreyColor.withValues(alpha: .6), "Monday", "10:30",),
              _myCard(blueGreyColor.withValues(alpha: .8), "Tuesday", "9:30",),
              _myCard(blueGreyColor, "Wednesday", "12:00"),
              _myCard(indigoColor.withValues(alpha: .6), "Thursday", "6:30",),
              _myCard(indigoColor.withValues(alpha: .8), "Friday", "4:00",),
              _myCard(indigoColor, "Saturday", "1:45"),
            ],
          ),
        ),
        const SizedBox(height: 50),
        StyleCard(
          title: "List of Activity",
          description: "- Daily study minimum 12 hours for life career",
          boxColor: whiteColor,
          child: _myContainer(Icons.list_rounded, "Activity", orangeColor,),
        ),
        SizedBox(height: 20),
        StyleCard(
          title: "List of Work",
          description: "- It's too slow progressing but good to stay continue",
          boxColor: whiteColor,
          child: _myContainer(Icons.verified, "Completed", greenColor,
          ),
        ),
      ],
    );
  }

  Widget _myCard(Color color, String day, String time){
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

  Widget _myContainer(IconData icon, String title, Color color){
    return Container(
      height: 105,
      width: 110,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.18),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 30),
          const SizedBox(height: 8),
          Text(title, style: Style.h5),
        ],
      ),
    );
  }
}
