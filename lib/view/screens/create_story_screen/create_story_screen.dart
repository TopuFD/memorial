import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';

class CreateStoryScreen extends StatelessWidget {
  const CreateStoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: AppString.createStory,
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 60.h,
              width: Get.width,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.blueColor),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select your Cagegory",
                    style: CustomTextStyle.h4(),
                  ),
                  DropdownButton(
                      alignment: Alignment.bottomCenter,
                      underline: SizedBox.shrink(),
                      icon: Icon(Icons.keyboard_arrow_down),
                      menuWidth: 300.w,
                      items: [
                        DropdownMenuItem(
                            value: "Topu",
                            child: Text("Topu", style: CustomTextStyle.h4())),
                        DropdownMenuItem(
                            value: "Siam Vai",
                            child:
                                Text("Siam vai", style: CustomTextStyle.h4())),
                        DropdownMenuItem(
                            value: "Nayem Vai",
                            child: Text(
                              "Nayem vai",
                              style: CustomTextStyle.h4(),
                            ))
                      ],
                      onChanged: (value) {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
