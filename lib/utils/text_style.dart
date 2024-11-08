import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memorial/utils/color.dart';

class CustomTextStyle {
  //==============================================heading one
  static TextStyle h1({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColor.blueColor,
      fontSize: fontSize ?? 26.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.w600,
    );
  }

  //==============================================heading two
  static TextStyle h2({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? Colors.blue,
      fontSize: fontSize ?? 22.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }

  //==============================================heading two
  static TextStyle h3({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColor.blackDoc,
      fontSize: fontSize ?? 20.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  //==============================================heading two
  static TextStyle h4({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColor.blackDoc,
      fontSize: fontSize ?? 18.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.w600,
    );
  }
}
