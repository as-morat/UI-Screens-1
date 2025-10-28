import 'package:flutter/material.dart';

import 'app_style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Stack(
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            decoration: BoxDecoration(
              color: indigoColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
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
                    Icon(
                      Icons.notifications_none_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 34,
            left: -10,
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
                    style: Style.headLineStyle5.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: whiteColor,
                    ),
                  ),
                  Text(
                    "Email Address",
                    textAlign: TextAlign.end,
                    style: Style.headLineStyle2.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: -6,
            bottom: 0,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: whiteColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7gYScBjrRVfwUe_bK2suaahxbMaVxoZnpQw&s",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
