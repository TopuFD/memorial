import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/home_controller/home_controller.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:memorial/view/widgets/custom_chart.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});
  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: CustomAppbar(
          title: AppString.notification,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() {
              return AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  final slide = Tween<Offset>(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                  ).animate(animation);

                  return SlideTransition(position: slide, child: child);
                },
                child: homeController.isfirstIndex.value == true
                    ? firstSixMonth(key: const ValueKey('first'))
                    : lastSixMonth(key: const ValueKey('last')),
              );
            }),
            const SizedBox(height: 20),
            Obx(() {
              return Center(
                child: homeController.isfirstIndex.value == true
                    ? Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          onTap: () {
                            homeController.isfirstIndex.value =
                                !homeController.isfirstIndex.value;
                          },
                          child: const Icon(Icons.arrow_forward),
                        ),
                      )
                    : Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          onTap: () {
                            homeController.isfirstIndex.value =
                                !homeController.isfirstIndex.value;
                          },
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
              );
            })
          ],
        ),
      ),
    );
  }

  // ==========================================================================First six months graph
  Widget firstSixMonth({int? index, required ValueKey<String> key}) {
    return AnimatedContainer(
      duration: const Duration(seconds: 4),
      key: key,
      child: const FlutterSalesGraph(
        barWidth: 40,
        salesData: [
          200,
          50,
          150,
          300,
          130,
          100,
        ],
        labels: [
          'Jan',
          'Feb',
          'Mar',
          'Apr',
          'May',
          'Jun',
        ],
        colors: [Colors.blue, Colors.green, Colors.red],
        dateLineHeight: 30.0,
        maxBarHeight: 350,
      ),
    );
  }

  //================================================================================= Last six months graph
  Widget lastSixMonth({int? index, required ValueKey<String> key}) {
    return AnimatedContainer(
      duration: const Duration(seconds: 4),
      key: key,
      child: const FlutterSalesGraph(
        barWidth: 40,
        salesData: [
          100,
          200,
          150,
          300,
          250,
          300,
        ],
        labels: [
          'Jul',
          'Aug',
          'Sep',
          'Oct',
          'Nov',
          'Dec',
        ],
        colors: [Colors.blue, Colors.green, Colors.red],
        dateLineHeight: 30.0,
        maxBarHeight: 350,
      ),
    );
  }
}
