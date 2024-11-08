import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/profile_controller/profile_controller.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';

import '../../../utils/color.dart';
import '../../../utils/text_style.dart';

class SubscriptionScreen extends StatelessWidget {
  SubscriptionScreen({super.key});
  final ProfileController profileController = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: AppString.subscriptions,
          )),
      body: SizedBox(
        width: Get.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //=============================================catagory button
              Container(
                width: 361.w,
                height: 57.h,
                decoration: BoxDecoration(
                    color: AppColor.blueColor,
                    borderRadius: BorderRadius.circular(15.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    myStoryCatogory(
                      title: "All Packages",
                      index: 0,
                      ontap: () {
                        profileController.isPackge.value = 0;
                      },
                    ),
                    myStoryCatogory(
                      title: "My Packages",
                      index: 1,
                      ontap: () {
                        profileController.isPackge.value = 1;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              //======================================================doctext
              const Text(
                'Use your package anytime for upload your story.',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 20,
                  fontFamily: 'Amiri',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //============================================================================slider
              CarouselSlider(
                  items: profileController.subscriptionList,
                  options: CarouselOptions(
                    height: 487.h,
                    aspectRatio: 16 / 10,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 2000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reson) {
                      profileController.sliderCardIndex.value = index;
                    },
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  //================================================================myStoryCatogory
  myStoryCatogory({String? title, int? index, VoidCallback? ontap}) {
    return Obx(() {
      return InkWell(
        onTap: ontap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 450),
          width: 150.w,
          height: 42.h,
          decoration: BoxDecoration(
              color: profileController.isPackge.value == index
                  ? AppColor.skyColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(16.r)),
          child: Center(
            child: Text(
              title!,
              style: CustomTextStyle.h1(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: profileController.isPackge.value == index
                      ? AppColor.black
                      : AppColor.white),
            ),
          ),
        ),
      );
    });
  }
}
