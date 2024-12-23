import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memorial/utils/color.dart';

// ignore: must_be_immutable
class CustomBodyBtn extends StatelessWidget {
  CustomBodyBtn({
    super.key,
    required this.title,
    required this.ontap,
    this.iconData,
    this.isBorder,
  });

  final String title;
  VoidCallback ontap;
  bool? isBorder;
  String? iconData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 353.w,
        height: 52.h,
        decoration: BoxDecoration(
            color: isBorder == true ? Colors.transparent : AppColor.blueColor,
            borderRadius: BorderRadius.circular(16.r),
            border: isBorder == true
                ? Border.all(color: AppColor.blueColor)
                : null),
        child: iconData == null
            ? Center(
                child: Text(
                title,
                style: TextStyle(
                  color: isBorder == true ? AppColor.blueColor : AppColor.white,
                  fontSize: 18,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(iconData!),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: isBorder == true
                          ? AppColor.blueColor
                          : AppColor.white,
                      fontSize: 18,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
