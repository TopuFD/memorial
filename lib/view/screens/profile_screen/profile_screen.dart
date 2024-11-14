import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/core/app_route.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: AppString.profile,
            isBack: false,
          )),
      body: SizedBox(
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              //==============================================profile image
              SvgPicture.asset(AppImage.profileLogo),
              //==============================================profile name and email
              Text(
                "Topu Roy",
                style: CustomTextStyle.h4(),
              ),
              Text(
                "thatsme@gmail.com",
                style: CustomTextStyle.h3(fontSize: 15.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              //=======================================================profile settings
              Container(
                width: 342.w,
                height: 365.h,
                padding: EdgeInsets.all(15.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: AppColor.blueColor)),
                child: Column(
                  children: [
                    //=================================edit profile
                    profileItem(
                      iconData: AppImage.editProfile,
                      title: AppString.editProfile,
                      ontap: () {},
                    ),
                    //=================================my stories
                    profileItem(
                      iconData: AppImage.myStory,
                      title: AppString.myStory,
                      ontap: () => Get.toNamed(AppRoute.myStoryScreen),
                    ),
                    //=================================save stories
                    profileItem(
                      iconData: AppImage.saveStory,
                      title: AppString.savedStories,
                      ontap: () => Get.toNamed(AppRoute.saveStoryScreen),
                    ),
                    //=================================tutorial button
                    profileItem(
                      iconData: AppImage.tutorial,
                      title: AppString.tutorialForApp,
                      ontap: () {},
                    ),
                    //================================= settings
                    profileItem(
                      iconData: AppImage.settings,
                      title: AppString.settings,
                      ontap: () => Get.toNamed(AppRoute.settingScreen),
                    ),
                    //================================= support
                    profileItem(
                      iconData: AppImage.support,
                      title: AppString.support,
                      ontap: () => Get.toNamed(AppRoute.supportScreen),
                    ),
                    //================================= about us
                    profileItem(
                      iconData: AppImage.about,
                      title: AppString.aboutUs,
                      ontap: () => Get.toNamed(AppRoute.aboutUsScreen),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20.h,
              ),
              //===============================================================log out button
              CustomBodyBtn(
                title: AppString.logOut,
                iconData: AppImage.logOut,
                ontap: () {},
                isBorder: true,
              ),
              SizedBox(
                height: 150.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  profileItem({String? title, String? iconData, VoidCallback? ontap}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.r),
        overlayColor: const WidgetStatePropertyAll(AppColor.blueColor),
        onTap: ontap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
          child: Row(
            children: [
              SvgPicture.asset(iconData!),
              SizedBox(
                width: 15.w,
              ),
              Text(
                title!,
                style: CustomTextStyle.h4(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
