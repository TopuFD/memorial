import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/auth_controller/signin_controller.dart';
import 'package:memorial/core/app_route.dart';
import 'package:memorial/helpers/other_helper.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';
import 'package:memorial/view/widgets/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final SigninController signinController = Get.find<SigninController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h), child: const CustomAppbar()),
      body: SizedBox(
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              //=====================================================welcome text
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: AppString.welcomeBack,
                        style: CustomTextStyle.h1(color: AppColor.black)),
                    TextSpan(
                        text: AppString.signin, style: CustomTextStyle.h1())
                  ])),
              SizedBox(
                height: 20.h,
              ),

              Form(
                  key: formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
                    child: Column(
                      children: [
                        //==================================================================email field
                        CustomTextField(
                          fieldHeading: AppString.email,
                          textEditingController:
                              signinController.emailController.value,
                          hintText: AppString.email,
                          prefixIconPath: AppImage.emailLogo,
                          validator: (value) =>
                              OtherHelper.emailValidator(value),
                        ),

                        //==================================================================password field
                        CustomTextField(
                          fieldHeading: AppString.password,
                          textEditingController:
                              signinController.passController.value,
                          hintText: AppString.password,
                          prefixIconPath: AppImage.lockLogo,
                          isPassword: true,
                          validator: (value) =>
                              OtherHelper.passwordValidator(value),
                        ),
                      ],
                    ),
                  )),

              //===============================================remember me and forgot pass button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obx(() {
                        return Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r)),
                            fillColor:
                                const WidgetStatePropertyAll(AppColor.white10),
                            value: signinController.isRemember.value,
                            onChanged: (value) {
                              signinController.isRemember.value = value!;
                            });
                      }),
                      Text(AppString.remember,
                          style: CustomTextStyle.h3(
                            fontSize: 15.sp,
                            color: AppColor.black,
                          ))
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoute.forgotPassScreen);
                      },
                      child: Text(
                        AppString.forgotPass,
                        style: CustomTextStyle.h1(
                            color: AppColor.black, fontSize: 15.sp),
                      ))
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              //========================================sign in button
              CustomBodyBtn(
                  title: AppString.signin,
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      Get.toNamed(AppRoute.bottomNavScreen);
                    }
                    Get.toNamed(AppRoute.bottomNavScreen);
                  }),
              SizedBox(
                height: 120.h,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: AppString.dontHaveAccount,
                    style: CustomTextStyle.h3(fontSize: 15.sp)),
                TextSpan(
                    text: AppString.signUp,
                    style: CustomTextStyle.h1(fontSize: 15.sp),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed(AppRoute.signupScreen);
                      })
              ])),
              SizedBox(
                height: 40.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
