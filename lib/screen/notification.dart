import 'package:flutter/material.dart';
import 'package:mr_ui/style/app_style.dart';
import 'package:mr_ui/style/notification_category_card.dart';
import 'package:mr_ui/style/notification_profile_style.dart';
import 'package:mr_ui/style/style_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Profile(),
              const SizedBox(height: 10,),
              Padding(
                  padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("History", style: Style.headLineStyle3.copyWith(
                    fontSize: 26
                  ),),
                ),
              ),
              const SizedBox(height: 5,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    History(color: lightBlueColor, day: "Sunday", time: "8:30"),
                    History(color: blueGreyColor.withValues(alpha: .6), day: "Monday", time: "10:30"),
                    History(color: blueGreyColor.withValues(alpha: .8), day: "Tuesday", time: "9:30"),
                    History(color: blueGreyColor, day: "Wednesday", time: "12:00"),
                    History(color: indigoColor.withValues(alpha: .6), day: "Thursday", time: "6:30"),
                    History(color: indigoColor.withValues(alpha: .8), day: "Friday", time: "4:00"),
                    History(color: indigoColor, day: "Saturday", time: "1:45"),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              StyleCard(
                title: "List of Activity",
                description: "- Daily study minimum 12 hours for life career",
                boxColor: whiteColor,
                child: Container(
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
                      Icon(
                        Icons.list_rounded,
                        color: orangeColor,
                        size: 30,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Activity",
                        style: Style.headLineStyle3.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              StyleCard(
                title: "List of Work",
                description: "- It's too slow progressing but good to stay continue",
                boxColor: whiteColor,
                child: Container(
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
                      Icon(
                        Icons.verified,
                        color: greenColor,
                        size: 30,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Completed",
                        style: Style.headLineStyle3.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
