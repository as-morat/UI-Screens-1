import 'package:flutter/material.dart';

import 'app_style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: yellowColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(Icons.search_rounded, size: 30, color: Colors.white),
                  ],
                ),
                const Spacer(),
                Text(
                  "Name",
                  textAlign: TextAlign.end,
                  style: Style.headLineStyle5.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Text(
                  "Short description portfolio\nabout user.",
                  textAlign: TextAlign.end,
                  style: Style.headLineStyle2.copyWith(
                    fontWeight: FontWeight.w400,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              left: -6,
              bottom: 0,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: whiteColor,
                    shape: BoxShape.circle
                ),
                child: Center(
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/abstract-luxury-gradient-blue-background-smooth-dark-blue-with-black-vignette-studio-banner_1258-101947.jpg?semt=ais_hybrid&w=740&q=80"))
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
