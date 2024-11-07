import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/core/app_route.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //======================================================== skip button
          Padding(
            padding:
                EdgeInsets.only(top: Get.width * .1, right: Get.height * .03),
            child: Align(
              alignment: Alignment.topRight,
              child: skipButton(AppString.skip),
            ),
          ),
          //=====================================================================onbord body here
          getOnbordBody(),

          SizedBox(
            height: 20.h,
          ),
          //================================================================indicator container
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              indicatorContainer(index: 0),
              indicatorContainer(index: 1),
              indicatorContainer(index: 2)
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          //================================================================custom body button
          SizedBox(
            width: 187.w,
            height: 52.h,
            child: CustomBodyBtn(
                title:
                    currentIndex == 2 ? AppString.getStarted : AppString.next,
                ontap: () {
                  setState(() {
                    if (currentIndex <= 1) {
                      currentIndex++;
                    } else {
                      Get.offAllNamed(AppRoute.authScreen);
                    }
                  });
                }),
          )
        ],
      ),
    );
  }

  //===========================================================indicator container
  indicatorContainer({int? index}) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      margin: EdgeInsets.only(left: 5.w),
      width: 13.w,
      height: 5.h,
      decoration: ShapeDecoration(
        color: currentIndex == index ? AppColor.blueColor : AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }

  //=========================================================================skip button
  skipButton(String titile) {
    return InkWell(
      onTap: () {
        setState(() {
          if (currentIndex <= 1) {
            currentIndex++;
          } else {
            currentIndex = 0;
          }
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: 56.w,
        height: 32.h,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFFD9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            AppString.skip,
            style: CustomTextStyle.h3(color: AppColor.black, fontSize: 14.sp),
          ),
        ),
      ),
    );
  }

  //==============================================================================onbordBody
  Widget getOnbordBody() {
    if (currentIndex == 0) {
      return onbordBodyOne();
    } else if (currentIndex == 1) {
      return onbordBodyTwo();
    } else {
      return onbordBodyThree();
    }
  }

  //==============================================================================onbordBodyOne
  Widget onbordBodyOne() {
    return AnimatedContainer(
      transformAlignment: Alignment.bottomRight,
      duration: const Duration(seconds: 1),
      child: Column(
        children: [
          Image.asset(AppImage.onbordTwo),
          Text(
            AppString.welcomeTo,
            style: CustomTextStyle.h3(),
          ),
          Text(
            AppString.memorialMoment,
            style: CustomTextStyle.h3(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: AppColor.black),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: Get.width / 1.2,
            child: Text(
              AppString.remembering,
              textAlign: TextAlign.center,
              style: CustomTextStyle.h3(fontSize: 15.sp),
            ),
          )
        ],
      ),
    );
  }

  //==============================================================================onbordBodyTwo
  Widget onbordBodyTwo() {
    return AnimatedContainer(
      transformAlignment: Alignment.bottomRight,
      duration: const Duration(seconds: 1),
      child: Column(
        children: [
          Image.asset(AppImage.onbordTwo),
          Text(
            AppString.creatShare,
            style: CustomTextStyle.h3(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: AppColor.black),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: Get.width / 1.2,
            child: Text(
              AppString.writeReady,
              textAlign: TextAlign.center,
              style: CustomTextStyle.h3(fontSize: 15.sp),
            ),
          )
        ],
      ),
    );
  } //==============================================================================onbordBodyThree

  Widget onbordBodyThree() {
    return AnimatedContainer(
      transformAlignment: Alignment.bottomRight,
      duration: const Duration(seconds: 1),
      child: Column(
        children: [
          Image.asset(AppImage.onbordThree),
          Text(
            AppString.readyStory,
            style: CustomTextStyle.h3(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: AppColor.black),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: Get.width / 1.2,
            child: Text(
              AppString.readyStoryDoc,
              textAlign: TextAlign.center,
              style: CustomTextStyle.h3(fontSize: 15.sp),
            ),
          )
        ],
      ),
    );
  }
}
