import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/home_controller/home_controller.dart';
import 'package:memorial/helpers/other_helper.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:memorial/view/widgets/custom_text_field.dart';
import 'package:memorial/view/widgets/cutom_network_image.dart';

class StoryDetailsScreen extends StatelessWidget {
  StoryDetailsScreen({super.key});
  final HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: "My Beloved Grandpa",
          )),
      body: SizedBox(
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomNetworkImage(
                        borderRadius: BorderRadius.circular(22.r),
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY_Gz153LkAbbdMMQTbK0ihepa3HOszAYvQQ&s",
                        height: 392.h,
                        width: 360.w),
                    Positioned(
                        top: Get.height / 2.5,
                        child: Container(
                          clipBehavior: Clip.none,
                          width: 360.w,
                          decoration: BoxDecoration(
                              color: const Color(0xFFAAD5FF),
                              borderRadius: BorderRadius.circular(22.r)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(AppImage.music),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "Sad Tragic Dramatic Music",
                                      style:
                                          CustomTextStyle.h3(fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                Text(
                                  "A Sunset Remembrance: Honoring Grandpa George.",
                                  style: CustomTextStyle.h4(),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "Memorial_Moments#10",
                                  style: CustomTextStyle.h4(fontSize: 14.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                //===================================================person
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AppImage.person),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "George A. Torres",
                                      style:
                                          CustomTextStyle.h3(fontSize: 16.sp),
                                    ),
                                  ],
                                ),
                                //===================================================date
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AppImage.date),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "09-11-1976 To 15-09-1992",
                                      style:
                                          CustomTextStyle.h3(fontSize: 16.sp),
                                    ),
                                  ],
                                ),
                                //=====================================================description
                                Text(
                                  AppString.desce,
                                  style: CustomTextStyle.h3(fontSize: 14.sp),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                //===================================================================================all comment

                                Obx(() {
                                  return ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount:
                                          homeController.commentList.length,
                                      itemBuilder: (context, index) {
                                        return homeController
                                            .commentList[index];
                                      });
                                })
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              //======================================================================changable sized box
              Obx(() {
                return SizedBox(
                  height: 420.h + homeController.commentList.length * 120.h,
                );
              }),
              //========================================================================coment section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //====================================================================user image
                  Container(
                    height: 60.h,
                    width: 60.w,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: CustomNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrWpVvB18in1MoQB6z7Tv4XSOEEbqfNrHtTg&s",
                        height: 60.h,
                        width: 60.w),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  //========================================================text fiels
                  Container(
                      width: 273.w,
                      height: 40.h,
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          border: Border.all(color: AppColor.black),
                          borderRadius: BorderRadius.circular(32.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 160.w,
                            child: Form(
                                child: TextFormField(
                              controller: homeController.comentController.value,
                              decoration: const InputDecoration(
                                hintText: "add a comment",
                                border: InputBorder.none,
                              ),
                              validator: (value) =>
                                  OtherHelper.validator(value),
                            )),
                          ),
                          //=========================================================================post button
                          InkWell(
                            onTap: () {
                              homeController.commentList.add(comentCard());
                              homeController.comentController.value.clear();
                            },
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              width: 82.w,
                              height: 32.h,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF037EEE),
                                  borderRadius: BorderRadius.circular(32.r)),
                              child: Center(
                                child: Text(
                                  "Post",
                                  style: CustomTextStyle.h2(
                                      color: AppColor.white, fontSize: 12.sp),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //=================================================================coment card
  comentCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //===========================================================user image
          Container(
            height: 60.h,
            width: 60.w,
            clipBehavior: Clip.antiAlias,
            decoration:
                const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            child: CustomNetworkImage(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrWpVvB18in1MoQB6z7Tv4XSOEEbqfNrHtTg&s",
                height: 60.h,
                width: 60.w),
          ),
          SizedBox(
            width: 10.w,
          ),
          AnimatedContainer(
            width: 250.w,
            height: 100.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            duration: const Duration(seconds: 2),
            decoration: BoxDecoration(
                color: const Color(0xFF8BC4F7),
                borderRadius: BorderRadius.circular(10.r)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: SizedBox(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Topu Roy",
                          style: CustomTextStyle.h4(),
                        ),
                        Text(
                          "Aug 19, 2021",
                          style: CustomTextStyle.h3(fontSize: 15.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Obx(() {
                      return Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        homeController.comentController.value.text,
                        style: CustomTextStyle.h4(fontSize: 15.sp),
                      );
                    })
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
