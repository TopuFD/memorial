import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';

class CustomDialog {
  customDialog({
    required BuildContext context,
    bool? isLogOut,
    bool? isDeletStory,
    bool? isDeletAccout,
  }) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(.8),
      transitionDuration: const Duration(milliseconds: 550),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: const Offset(0, 0),
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            )),
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //==========================================================dialog title here
                    Text(
                      isLogOut == true
                          ? AppString.logoutDialogTitle
                          : isDeletStory == true
                              ? AppString.deletStoryTitle
                              : AppString.deleteAccountTitle,
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.h4(
                          fontSize: 22.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20.h),
                    //=======================================================dialog button here
                    isLogOut == true
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              whiteButton(title: "Cancel", context: context),
                              colorButton(
                                color: AppColor.blueColor,
                                title: "Log Out",
                                ontap: () {},
                              ),
                            ],
                          )
                        : isDeletStory == true
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  whiteButton(
                                      title: "Cancel", context: context),
                                  colorButton(
                                    color: Colors.red,
                                    title: "Delete",
                                    ontap: () {},
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  whiteButton(
                                      title: "Cancel", context: context),
                                  colorButton(
                                    color: AppColor.blueColor,
                                    title: "Delete",
                                    ontap: () {},
                                  ),
                                ],
                              ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  //=================================color button
  colorButton({String? title, Color? color, VoidCallback? ontap}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 130.w,
        height: 48.h,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.r)),
        child: Center(
          child: Text(
            title!,
            style: CustomTextStyle.h4(fontSize: 16.sp, color: AppColor.white),
          ),
        ),
      ),
    );
  }

  //==============================white button
  whiteButton({
    String? title,
    required BuildContext context,
  }) {
    return InkWell(
      onTap: () => Get.back(),
      child: Container(
        width: 130.w,
        height: 48.h,
        margin: EdgeInsets.only(right: 6.w),
        decoration: BoxDecoration(
            color: const Color(0xFFDDDDDD),
            borderRadius: BorderRadius.circular(10.r)),
        child: Center(
          child: Text(
            title!,
            style: CustomTextStyle.h4(fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
