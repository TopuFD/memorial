import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/profile_controller/profile_controller.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';

import '../../../core/app_route.dart';
import '../../widgets/story_card.dart';

class MyStoryScreen extends StatelessWidget {
  MyStoryScreen({super.key});
  final ProfileController profileController = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: "My Stroy",
          )),
      body: SizedBox(
        width: Get.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                        title: "My Stories",
                        index: 0,
                        ontap: () {
                          profileController.catagoryIndex.value = 0;
                        },
                      ),
                      myStoryCatogory(
                        title: "Pending",
                        index: 1,
                        ontap: () {
                          profileController.catagoryIndex.value = 1;
                        },
                      ),
                      myStoryCatogory(
                        title: "revision",
                        index: 2,
                        ontap: () {
                          profileController.catagoryIndex.value = 2;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                //==============================================================catagory body
                Obx(() {
                  return profileController.catagoryIndex.value == 0
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return StoryCard(
                              ontap: () =>
                                  Get.toNamed(AppRoute.storyDetailsScreen),
                            );
                          })
                      : profileController.catagoryIndex.value == 1
                          ? ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return StoryCard(
                                  ontap: () =>
                                      Get.toNamed(AppRoute.storyDetailsScreen),
                                );
                              })
                          : ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return StoryCard(
                                  ontap: () =>
                                      Get.toNamed(AppRoute.storyDetailsScreen),
                                );
                              });
                })
              ],
            ),
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
          duration: Duration(milliseconds: 450),
          width: 110.w,
          height: 42.h,
          decoration: BoxDecoration(
              color: profileController.catagoryIndex.value == index
                  ? AppColor.skyColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(16.r)),
          child: Center(
            child: Text(
              title!,
              style: CustomTextStyle.h1(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: profileController.catagoryIndex.value == index
                      ? AppColor.black
                      : AppColor.white),
            ),
          ),
        ),
      );
    });
  }
}
