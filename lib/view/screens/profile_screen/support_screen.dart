import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: AppString.support,
          )),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //====================================================image
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                AppImage.supportImage,
                width: 250.w,
                height: 232.h,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "If you face any kind of problem\nwith\nour service feel free to contact us.",
              textAlign: TextAlign.center,
              style: CustomTextStyle.h3(fontSize: 18.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            //=============================================phone number
            SizedBox(
              width: 307.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AppImage.call),
                  const Text(
                    '(609)327-7992',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            //==========================================email
            SizedBox(
              width: 307.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AppImage.messege),
                  const Text(
                    'remeniceenterprise@gmail.com',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            //=====================================================bottom part
            const SizedBox(
              width: 307,
              child: Text(
                'Remenice Enterprise LLC P.O. Box 185 \nAtco, New Jersey 08004',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
