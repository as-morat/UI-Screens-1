import 'package:flutter/material.dart';
import 'package:mr_ui/style/positioned_style.dart';
import 'color_text_style.dart';

class AppBarContainer extends StatelessWidget {
  final Color color;
  final String image;
  final double height;
  final double width;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String? title;
  final String? description;
  final Widget? child;

  const AppBarContainer({
    super.key,
    required this.color,
    required this.height,
    required this.width,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.image,
    this.title,
    this.description,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(leadingIcon, size: 30, color: whiteColor),
                    Icon(trailingIcon, size: 30, color: whiteColor),
                  ],
                ),
                const Spacer(),
                if (title != null)
                  Text(
                    title!,
                    textAlign: TextAlign.end,
                    style: Style.h1.copyWith(color: whiteColor),
                  ),
                if (description != null) const SizedBox(height: 5),
                if (description != null)
                  Text(
                    description!,
                    textAlign: TextAlign.end,
                    style: Style.h5.copyWith(color: whiteColor),
                  ),
              ],
            ),
          ),
          if (child != null) child!,
          MyPositioned(height: height, width: width, image: image),
        ],
      ),
    );
  }
}
