import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/view/profile_screen/profile_screen.dart';
import 'package:memorial/view/screens/home_screen/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<IconData> iconList = [Icons.home, Icons.person];

  int currentIndex = 0;
  List pages = [HomeScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.skyColor,
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: pages[currentIndex],
      floatingActionButton: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
        child: Center(
          child: Icon(
            Icons.add,
            size: 35.h,
            color: AppColor.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 90.h,
        child: AnimatedBottomNavigationBar(
          backgroundColor: AppColor.blueColor,
          icons: iconList,
          activeIndex: currentIndex,
          gapLocation: GapLocation.center,
          leftCornerRadius: 20.r,
          rightCornerRadius: 20.r,
          activeColor: AppColor.white,
          inactiveColor: AppColor.white,
          onTap: (index) => setState(() => currentIndex = index),
        ),
      ),
    );
  }
}
