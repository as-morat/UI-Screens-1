import 'package:flutter/material.dart';
import 'package:mr_ui/screen/home.dart';
import 'package:mr_ui/screen/notification.dart';
import 'package:mr_ui/screen/profile.dart';
import 'package:mr_ui/style/app_style.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int pageIndex = 0;

  static final List page = [
    const ProfileScreen(),
    const NotificationScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[pageIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 25, left: 25, right: 25),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavIcon(Icons.home_filled, 0),
            _buildNavIcon(Icons.person, 1),
            _buildNavIcon(Icons.info, 2),
          ],
        ),
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, int index) {
    bool isSelected = pageIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          pageIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? blueGreyColor.withValues(alpha: 0.15) : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          icon,
          size: 32,
          color: isSelected ? blueGreyColor : grey300,
        ),
      ),
    );
  }
}
