import 'package:flutter/material.dart';

import '../../style/color_text_style.dart';

class MyContainer extends StatelessWidget {

  final Color color;
  final IconData icon;

  const MyContainer({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(8),),
      child: Center(child: Icon(icon, color: color, size: 32,),)
    );
  }
}
