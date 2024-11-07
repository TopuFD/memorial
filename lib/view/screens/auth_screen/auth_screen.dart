import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/core/app_route.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .08,
            ),
            Text(
              AppString.continueRegister,
              style: CustomTextStyle.h3(),
            ),
            Text(
              AppString.memorialMegagin,
              style: CustomTextStyle.h3(
                  fontWeight: FontWeight.w500, fontSize: 22.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            Image.asset(AppImage.authImage),
            SizedBox(
              height: 20.h,
            ),
            //=========================================================sign in button
            CustomBodyBtn(
                title: AppString.signin,
                ontap: () {
                  Get.toNamed(AppRoute.signinScreen);
                }),
            SizedBox(
              height: 20.h,
            ),
            //=========================================================sign in button
            CustomBodyBtn(
              title: AppString.signUp,
              ontap: () {
                Get.toNamed(AppRoute.signupScreen);
              },
              isBorder: true,
            ),
          ],
        ),
      ),
    );
  }
}
