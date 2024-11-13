import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/setting_controller.dart/setting_controller.dart';
import 'package:memorial/core/app_route.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';
import 'package:memorial/view/widgets/custom_text_field.dart';

class ChangePassScreen extends StatelessWidget {
  ChangePassScreen({super.key});
  final SettingController settingController = SettingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: AppString.changePass,
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Form(
                key: formKey,
                child: Column(
                  children: [
                    //=====================================================================current password
                    CustomTextField(
                      fieldHeading: AppString.currentPass,
                      textEditingController:
                          settingController.currentPass.value,
                      hintText: AppString.currentPass,
                      isPassword: true,
                      prefixIconPath: AppImage.lockLogo,
                    ),
                    //=====================================================================current password
                    CustomTextField(
                      fieldHeading: AppString.newPass,
                      textEditingController: settingController.newPass.value,
                      hintText: AppString.newPass,
                      isPassword: true,
                      prefixIconPath: AppImage.lockLogo,
                    ),
                    //=====================================================================current password
                    CustomTextField(
                      fieldHeading: AppString.confirmPass,
                      textEditingController:
                          settingController.confirmPass.value,
                      hintText: AppString.confirmPass,
                      isPassword: true,
                      prefixIconPath: AppImage.lockLogo,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoute.forgotPassScreen);
                          },
                          child: Text(
                            AppString.forgotPass,
                            style: CustomTextStyle.h4(),
                          )),
                    ),
                  ],
                )),
            const Expanded(
              child: SizedBox(),
            ),
            CustomBodyBtn(title: AppString.submit, ontap: () {}),
            SizedBox(
              height: 30.h,
            )
          ],
        ),
      ),
    );
  }
}
