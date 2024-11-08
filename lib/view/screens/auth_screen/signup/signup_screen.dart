import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/auth_controller/sitgnup_controller.dart';
import 'package:memorial/core/app_route.dart';
import 'package:memorial/helpers/other_helper.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';
import 'package:memorial/view/widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final SignUpController signUpController = Get.find<SignUpController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h), child: CustomAppbar()),
      body: SizedBox(
        width: Get.width,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height * .05,
                ),
                Text(
                  AppString.welcomehere,
                  style: CustomTextStyle.h1(color: AppColor.black),
                ),
                Text(
                  AppString.createAccount,
                  style: CustomTextStyle.h1(),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  AppString.filInfo,
                  style: CustomTextStyle.h3(fontSize: 14.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Form(
                    key: formKey,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * .05),
                      child: Column(
                        children: [
                          //============================================================================ name field
                          CustomTextField(
                            fieldHeading: AppString.fullName,
                            textEditingController:
                                signUpController.nameController.value,
                            hintText: AppString.enterName,
                            validator: (value) => OtherHelper.validator(value),
                          ),
                          //============================================================================ email field
                          CustomTextField(
                            fieldHeading: AppString.email,
                            textEditingController:
                                signUpController.emailController.value,
                            hintText: AppString.email,
                            prefixIconPath: AppImage.emailLogo,
                            validator: (value) =>
                                OtherHelper.emailValidator(value),
                          ),
                          //============================================================================ password field
                          CustomTextField(
                            fieldHeading: AppString.password,
                            textEditingController:
                                signUpController.passController.value,
                            hintText: AppString.password,
                            prefixIconPath: AppImage.lockLogo,
                            isPassword: true,
                            validator: (value) =>
                                OtherHelper.passwordValidator(value),
                          ),
                          //============================================================================ confirm password field
                          CustomTextField(
                            fieldHeading: AppString.comPassword,
                            textEditingController:
                                signUpController.comfPassController.value,
                            hintText: AppString.comPassword,
                            prefixIconPath: AppImage.lockLogo,
                            isPassword: true,
                            validator: (value) =>
                                OtherHelper.passwordValidator(value),
                          ),
                        ],
                      ),
                    )),
                //=========================================================================terms and condition
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Obx(() {
                        return Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r)),
                            fillColor:
                                const WidgetStatePropertyAll(AppColor.white10),
                            value: signUpController.isAgree.value,
                            onChanged: (value) {
                              signUpController.isAgree.value = value!;
                            });
                      }),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: AppString.agreeWith,
                            style: CustomTextStyle.h3(color: AppColor.black)),
                        TextSpan(
                            text: AppString.terms,
                            style: CustomTextStyle.h3(color: AppColor.white10))
                      ]))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                //=========================================================sign up button
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
                  child: CustomBodyBtn(
                      title: AppString.signUp,
                      ontap: () {
                        if (formKey.currentState!.validate()) {
                          Get.toNamed(AppRoute.signupOtpVerifyScreen);
                        }
                        Get.toNamed(AppRoute.signupOtpVerifyScreen);
                      }),
                ),
                SizedBox(
                  height: 30.h,
                ),
                //================================================================= have account
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: AppString.alreadyAccount,
                      style: CustomTextStyle.h3(
                          color: AppColor.black, fontSize: 15.sp)),
                  TextSpan(
                      text: AppString.signin,
                      style: CustomTextStyle.h3(
                          color: AppColor.blueColor, fontSize: 15.sp),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(AppRoute.signinScreen);
                        })
                ])),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
