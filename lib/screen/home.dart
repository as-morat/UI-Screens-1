import 'package:flutter/material.dart';
import 'package:mr_ui/style/app_style.dart';
import 'package:mr_ui/style/profile_style.dart';
import 'package:mr_ui/style/style_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Profile(),
              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Lorem ipsum",
                      style: Style.headLineStyle5.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      "Lorem ipsum",
                      style: Style.headLineStyle5.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: greyColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              StyleCard(
                boxColor: yellowColor,
                child: Container(
                  height: 35,
                  width: 55,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.circle_outlined,
                      color: Colors.yellow,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              StyleCard(
                  boxColor: greenColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 55,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.square_outlined,
                            color: Colors.green,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              const SizedBox(height: 20),
              StyleCard(
                  boxColor: blueGreyColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 55,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.change_history_outlined,
                            color: Colors.blueGrey,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
