import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/auth_controller/forgot_pass_controller.dart';
import 'package:memorial/helpers/other_helper.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';
import 'package:memorial/view/widgets/custom_text_field.dart';

class ResetPassScreen extends StatelessWidget {
  ResetPassScreen({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ForgotPassController forgotPassController =
      Get.find<ForgotPassController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h), child: CustomAppbar()),
      body: SizedBox(
        width: Get.width,
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
                      text: AppString.nowResetPass,
                      style: CustomTextStyle.h1(color: AppColor.black)),
                  TextSpan(
                      text: AppString.password, style: CustomTextStyle.h1())
                ])),

            SizedBox(
              height: 20.h,
            ),
            Text(
              AppString.passMustHave8,
              style: CustomTextStyle.h3(fontSize: 15.sp),
            ),
            SizedBox(
              height: 20.h,
            ),

            Form(
                key: formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
                  child: Column(
                    children: [
                      //==================================================================password field
                      CustomTextField(
                        fieldHeading: AppString.password,
                        textEditingController:
                            forgotPassController.newPass.value,
                        hintText: AppString.password,
                        prefixIconPath: AppImage.lockLogo,
                        isPassword: true,
                        validator: (value) =>
                            OtherHelper.passwordValidator(value),
                      ),
                      //==================================================================password field
                      CustomTextField(
                        fieldHeading: AppString.password,
                        textEditingController:
                            forgotPassController.confirmPass.value,
                        hintText: AppString.password,
                        prefixIconPath: AppImage.lockLogo,
                        isPassword: true,
                        validator: (value) =>
                            OtherHelper.passwordValidator(value),
                      ),
                    ],
                  ),
                )),
            const Expanded(
              child: SizedBox(),
            ),
            //========================================rreset password button
            CustomBodyBtn(
                title: AppString.signin,
                ontap: () {
                  if (formKey.currentState!.validate()) {}
                }),
            SizedBox(
              height: 80.h,
            ),
          ],
        ),
      ),
    );
  }
}
