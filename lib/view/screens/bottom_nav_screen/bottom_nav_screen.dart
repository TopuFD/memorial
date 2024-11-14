import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/view/screens/home_screen/home_screen.dart';
import 'package:memorial/view/screens/profile_screen/profile_screen.dart';

import '../../../controller/home_controller/home_controller.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<IconData> iconList = [Icons.home, Icons.person];

  int currentIndex = 0;
  List pages = [HomeScreen(), const ProfileScreen()];

  final HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.skyColor,
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: pages[currentIndex],
      floatingActionButton: NeumorphicButton(
          onPressed: () {
            homeController.isOverlayVisible.toggle();
          },
          style: const NeumorphicStyle(
            shape: NeumorphicShape.convex,
            depth: 2,
            intensity: 2,
            color: AppColor.blueColor,
            shadowDarkColor: Colors.white,
            shadowLightColor: AppColor.white,
            boxShape: NeumorphicBoxShape.circle(),
          ),
          child: Icon(
            Icons.add,
            color: AppColor.white,
            size: 40.h,
          )),
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
