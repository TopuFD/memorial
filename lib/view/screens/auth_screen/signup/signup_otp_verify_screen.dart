import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/auth_controller/sitgnup_controller.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../widgets/custom_body_btn.dart';

class SignupOtpVerifyScreen extends StatelessWidget {
  SignupOtpVerifyScreen({
    super.key,
  });
  final SignUpController signUpController = Get.find<SignUpController>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h), child: CustomAppbar()),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            //=====================================================enter verification code
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: AppString.enter,
                      style: CustomTextStyle.h3(
                          color: AppColor.black, fontSize: 26.sp)),
                  TextSpan(
                      text: AppString.verification,
                      style: CustomTextStyle.h3(
                          color: AppColor.blueColor, fontSize: 26.sp)),
                  TextSpan(
                      text: AppString.code,
                      style: CustomTextStyle.h3(
                          color: AppColor.black, fontSize: 26.sp)),
                ])),
            SizedBox(
              height: Get.height * .03,
            ),
            Text(
              textAlign: TextAlign.center,
              AppString.codeSent,
              style: CustomTextStyle.h3(fontSize: 14.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            //======================================= otp pin code field here
            SizedBox(
              width: 300.w,
              child: PinCodeTextField(
                boxShadows: const [
                  BoxShadow(
                    color: AppColor.black,
                    blurRadius: 8,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
                controller: signUpController.signupOtpController.value,
                appContext: context,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  inactiveColor: AppColor.white,
                  inactiveFillColor: AppColor.white,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(16.r),
                  fieldHeight: 55.h,
                  fieldWidth: 55.h,
                  activeFillColor: AppColor.white,
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                beforeTextPaste: (text) {
                  return true;
                },
              ),
            ),
            SizedBox(
              height: 40.h,
            ),

            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: AppString.dontGetCode,
                  style: CustomTextStyle.h3(
                      color: AppColor.white10, fontSize: 15.sp)),
              TextSpan(
                  text: AppString.resend,
                  style: CustomTextStyle.h3(
                      color: AppColor.blueColor, fontSize: 15.sp)),
            ])),
            Expanded(
              child: SizedBox(),
            ),
            //=========================================================confirm button here
            CustomBodyBtn(title: "Confirm", ontap: () {}),
            SizedBox(
              height: 80.h,
            ),
          ],
        ),
      ),
    );
  }
}
