import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/profile_controller/profile_controller.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_body_btn.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard(
      {super.key,
      required this.cardType,
      required this.pageType,
      required this.dollar,
      required this.consistWord,
      required this.imageCount,
      required this.activeTime});
  final String cardType;
  final String pageType;
  final String dollar;
  final String consistWord;
  final int imageCount;
  final String activeTime;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 350.w,
      height: 450.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19101113),
              blurRadius: 12,
              offset: Offset(0, 8),
              spreadRadius: 0,
            )
          ]),
      duration: const Duration(seconds: 4),
      child: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text(cardType, style: CustomTextStyle.h4(fontSize: 26.sp)),
            SizedBox(
              height: 10.h,
            ),
            Text(pageType, style: CustomTextStyle.h1(fontSize: 22.sp)),
            SizedBox(
              height: 10.h,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '\$07', style: CustomTextStyle.h4(fontSize: 54.sp)),
                  TextSpan(
                      text: ' per story',
                      style: CustomTextStyle.h3(fontSize: 24.sp)),
                ],
              ),
            ),
            //==================================================card fetures
            cardFeture(title: "All People Stories"),
            cardFeture(title: "Veteran Stories"),
            cardFeture(title: "Pets Stories"),
            cardFeture(title: "${imageCount.toString()} Pictures"),
            cardFeture(title: activeTime),
            cardFeture(title: "Consist of $consistWord words"),
            SizedBox(
              height: 10.h,
            ),
            CustomBodyBtn(
                title: "Pay Now",
                ontap: () {
                  ProfileController.instance.mySubscriptionList.add(
                      ProfileController.instance.subscriptionList![
                          ProfileController.instance.sliderCardIndex.value]);
                }),
          ],
        ),
      ),
    );
  }

  cardFeture({String? title}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: SizedBox(
        width: 207.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppImage.select),
            Text(
              title!,
              style: CustomTextStyle.h3(
                  fontSize: 16.sp, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
