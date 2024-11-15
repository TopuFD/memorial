import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/payment_controller/payment_controller.dart';
import 'package:memorial/controller/profile_controller/profile_controller.dart';
import 'package:memorial/helpers/other_helper.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';
import 'package:memorial/view/widgets/custom_dialog.dart';
import 'package:memorial/view/widgets/custom_text_field.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});
  final PaymentcController paymentcController = Get.find<PaymentcController>();
  final ProfileController profileController = Get.find<ProfileController>();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: AppString.paymentScreen,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //========================================================================================amount here
                Text(
                  AppString.paymentAmount,
                  style: CustomTextStyle.h4(),
                ),
                Text(
                  "${AppString.dollar}2000",
                  style: CustomTextStyle.h4(),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        //==========================================================================================card name field
                        CustomTextField(
                          fieldHeading: AppString.cardName,
                          textEditingController:
                              paymentcController.cardName.value,
                          hintText: AppString.cardName,
                          validator: (value) => OtherHelper.validator(value),
                        ),
                        //==========================================================================================card number name field
                        CustomTextField(
                          fieldHeading: AppString.cardNumber,
                          textEditingController:
                              paymentcController.cardNumber.value,
                          hintText: AppString.cardNumber,
                          validator: (value) => OtherHelper.validator(value),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //==========================================================================================expiration field
                            SizedBox(
                              width: 170.w,
                              child: CustomTextField(
                                fieldHeading: AppString.expiration,
                                textEditingController:
                                    paymentcController.expiration.value,
                                hintText: AppString.expiration,
                                validator: (value) =>
                                    OtherHelper.validator(value),
                              ),
                            ),
                            //==========================================================================================cvc number field
                            SizedBox(
                              width: 170.w,
                              child: CustomTextField(
                                fieldHeading: AppString.cvc,
                                textEditingController:
                                    paymentcController.cvcNumber.value,
                                hintText: AppString.cvc,
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: SvgPicture.asset(AppImage.cvcIcon),
                                ),
                                validator: (value) =>
                                    OtherHelper.validator(value),
                              ),
                            ),
                          ],
                        ),
                        //==========================================================================================country name field
                        CustomTextField(
                          fieldHeading: AppString.country,
                          textEditingController:
                              paymentcController.country.value,
                          hintText: AppString.country,
                          validator: (value) => OtherHelper.validator(value),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 50.h,
                ),
                //===================================================================================================payment button
                CustomBodyBtn(
                    title: AppString.pay,
                    ontap: () {
                      CustomDialog()
                          .customDialog(context: context, isSuccess: true);
                      ProfileController.instance.mySubscriptionList.add(Obx(() {
                        return ProfileController.instance.subscriptionList![
                            ProfileController.instance.sliderCardIndex.value];
                      }));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
