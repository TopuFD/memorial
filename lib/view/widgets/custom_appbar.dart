import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/text_style.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key, this.title});
  String? title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: (title == null || title!.isEmpty)
            ? Align(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 25.h,
                      color: AppColor.black,
                    )),
              )
            : AppBar(
                surfaceTintColor: Colors.transparent,
                backgroundColor: AppColor.skyColor,
                leading: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 25.h,
                      color: AppColor.black,
                    )),
                centerTitle: true,
                title: Text(
                  title!,
                  style: CustomTextStyle.h3(fontWeight: FontWeight.w700),
                ),
              ));
  }
}
