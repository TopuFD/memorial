import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/core/app_route.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/view/widgets/custom_dialog.dart';

import '../../../../utils/color.dart';
import '../../../../utils/text_style.dart';
import '../../../widgets/cutom_network_image.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.skyColor,
      child: Padding(
        padding: EdgeInsets.only(right: 20.w, top: 50.h),
        child: Column(
          children: [
            //=======================================================================user profile
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                children: [
                  Container(
                    height: 60.h,
                    width: 60.w,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CustomNetworkImage(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF6YcyD5m5o7C_mj8M71hGT6k-J-7-D79-lw&s",
                      height: 60.h,
                      width: 60.w,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Motashin Billah",
                        style: CustomTextStyle.h1(
                            color: AppColor.black, fontSize: 20.sp),
                      ),
                      Text(
                        "hongkong@gmail.com",
                        style: CustomTextStyle.h1(
                            color: AppColor.black, fontSize: 16.sp),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            //==============================================my story button
            customDrawerItem(
                ontap: () {
                  Get.toNamed(AppRoute.myStoryScreen);
                },
                title: AppString.myStory,
                iconPath: AppImage.myStory),
            //==============================================save stroy button
            customDrawerItem(
                ontap: () {
                  Get.toNamed(AppRoute.saveStoryScreen);
                },
                title: AppString.savedStories,
                iconPath: AppImage.saveStory),
            //==============================================tutorial button
            customDrawerItem(
                ontap: () {},
                title: AppString.tutorialForApp,
                iconPath: AppImage.tutorial),
            //==============================================subscription button
            customDrawerItem(
                ontap: () {
                  Get.toNamed(AppRoute.subscriptionScreen);
                },
                title: AppString.subscriptions,
                iconPath: AppImage.subscription),
            //==============================================settints
            // button
            customDrawerItem(
                ontap: () {},
                title: AppString.settings,
                iconPath: AppImage.settings),
            SizedBox(
              height: 20.h,
            ),
            //==============================================about  button
            customDrawerItem(
                ontap: () {
                  Get.toNamed(AppRoute.aboutUsScreen);
                },
                title: AppString.aboutUs,
                iconPath: AppImage.about),
            //==============================================support  button
            customDrawerItem(
                ontap: () {
                  Get.toNamed(AppRoute.supportScreen);
                },
                title: AppString.support,
                iconPath: AppImage.support),
            //==============================================privacy policy  button
            customDrawerItem(
                ontap: () {
                  Get.toNamed(AppRoute.privacyPolicyScreen);
                },
                title: AppString.privacyPolicy,
                iconPath: AppImage.policy),
            //==============================================terms and conditions  button
            customDrawerItem(
                ontap: () {
                  Get.toNamed(AppRoute.termsConditionScreen);
                },
                title: AppString.terms,
                iconPath: AppImage.terms),
            SizedBox(
              height: 20.h,
            ),
            //==============================================logout  button
            customDrawerItem(
                ontap: () {
                  CustomDialog().customDialog(context: context, isLogOut: true);
                },
                title: AppString.logOut,
                iconPath: AppImage.logOut),
          ],
        ),
      ),
    );
  }

  //========================================custom drawer item
  customDrawerItem({String? iconPath, String? title, VoidCallback? ontap}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: InkWell(
        onTap: ontap,
        overlayColor: const WidgetStatePropertyAll(AppColor.skyDeep),
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Row(
            children: [
              SvgPicture.asset(iconPath!),
              SizedBox(
                width: 10.w,
              ),
              Text(
                title!,
                style: CustomTextStyle.h3(fontSize: 16.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
