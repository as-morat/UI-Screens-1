import 'package:flutter/material.dart';
import 'package:mr_ui/style/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: 220,
                child: Stack(
                  children: [
                    Container(
                    height: 180,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      color: indigoColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.settings_outlined, size: 30, color: whiteColor,),
                            Icon(Icons.menu, size: 30, color: whiteColor,),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "Wish you a great day!",
                          textAlign: TextAlign.end,
                          style: Style.headLineStyle2.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Name",
                          textAlign: TextAlign.end,
                          style: Style.headLineStyle4.copyWith(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
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
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/orange-background_23-2147674307.jpg?semt=ais_hybrid&w=740&q=80"),
                              fit: BoxFit.cover
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]
                ),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, 40),
                        child: Container(
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Transform.translate(
                        offset: const Offset(0, 40),
                        child: Container(
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -5),
                        child: Container(
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                     const SizedBox(height: 20,),
                      Transform.translate(
                        offset: const Offset(0, -5),
                        child: Container(
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                              color: orangeColor,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
