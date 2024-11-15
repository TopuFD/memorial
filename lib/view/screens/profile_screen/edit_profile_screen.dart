import 'dart:io';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/profile_controller/profile_controller.dart';
import 'package:memorial/helpers/image_picker_helper.dart';
import 'package:memorial/helpers/other_helper.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';
import 'package:memorial/view/widgets/custom_text_field.dart';
import '../../../utils/image.dart';
import '../../../utils/string.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final ImagePicController imagePicker = Get.find<ImagePicController>();
  final ProfileController profileController = Get.find<ProfileController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: AppString.editProfile,
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
              //=============================================================================edit image
              Obx(() {
                return imagePicker.imagePath!.value.isNotEmpty
                    ? Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 87.h,
                            width: 87.w,
                            clipBehavior: Clip.antiAlias,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.file(
                              File(imagePicker.imagePath!.value),
                              height: 87.h,
                              width: 87.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: -2,
                            right: 2,
                            child: InkWell(
                              onTap: () {
                                imagePicker.pickImageCemara();
                              },
                              borderRadius: BorderRadius.circular(100),
                              child: SvgPicture.asset(AppImage.edit),
                            ),
                          ),
                        ],
                      )
                    : Stack(
                        children: [
                          SvgPicture.asset(AppImage.profileLogo),
                          Positioned(
                            bottom: 16,
                            right: 10,
                            child: InkWell(
                              onTap: () {
                                imagePicker.pickImageCemara();
                              },
                              borderRadius: BorderRadius.circular(100),
                              child: SvgPicture.asset(AppImage.edit),
                            ),
                          ),
                        ],
                      );
              }),

              //===============================================================================edit name
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        //=============================================edit name
                        CustomTextField(
                          fieldHeading: AppString.name,
                          textEditingController:
                              profileController.nameController.value,
                          hintText: "Topu Roy",
                          validator: (value) => OtherHelper.validator(value),
                        ),
                        //=============================================edit email
                        CustomTextField(
                          fieldHeading: AppString.editEmail,
                          textEditingController:
                              profileController.emailController.value,
                          hintText: "topuroy@gmail.com",
                          validator: (value) =>
                              OtherHelper.emailValidator(value),
                        ),
                        //=============================================edit phone
                        CustomTextField(
                          fieldHeading: AppString.phone,
                          textEditingController:
                              profileController.phoneController.value,
                          hintText:
                              profileController.phoneController.value.text,
                          isPhoneField: true,
                        ),
                        //=============================================edit country
                        CustomTextField(
                          fieldHeading: AppString.country,
                          textEditingController:
                              profileController.countryController.value,
                          hintText: "Bangladesh",
                          validator: (value) => OtherHelper.validator(value),
                          suffixIcon: IconButton(
                              onPressed: () {
                                showCountryPicker(
                                  context: context,
                                  exclude: <String>['KN'],
                                  onSelect: (Country country) {
                                    profileController.countryController.value
                                        .text = country.name;
                                  },
                                );
                              },
                              icon: Icon(
                                Icons.arrow_drop_down,
                                size: 30.sp,
                              )),
                        ),
                        //=============================================edit addrress
                        CustomTextField(
                          fieldHeading: AppString.address,
                          textEditingController:
                              profileController.addressController.value,
                          hintText: "Thakurgoan Rajshahi",
                          validator: (value) => OtherHelper.validator(value),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              //============================================================================submit button
              CustomBodyBtn(
                  title: AppString.submit,
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      Get.back();
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
