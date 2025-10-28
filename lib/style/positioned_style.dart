import 'package:flutter/material.dart';
import 'package:mr_ui/style/color_text_style.dart';

class MyPositioned extends StatelessWidget {

  final String image;
  final double height;
  final double width;


  const MyPositioned({
    super.key,
    required this.height,
    required this.width,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -6,
      bottom: 0,
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          color: whiteColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
