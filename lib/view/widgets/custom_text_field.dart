// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:memorial/utils/color.dart';
// import 'package:memorial/utils/text_style.dart';

// class CustomTextField extends StatefulWidget {
//   static void _defaultOnTap() {}
//   const CustomTextField({
//     this.textEditingController,
//     this.focusNode,
//     this.keyboardType = TextInputType.text,
//     this.textInputAction = TextInputAction.next,
//     this.cursorColor = AppColor.black,
//     this.inputTextStyle = const TextStyle(color: AppColor.black),
//     this.textAlignVertical = TextAlignVertical.center,
//     this.textAlign = TextAlign.start,
//     this.maxLines = 1,
//     this.validator,
//     this.hintText,
//     this.hintStyle = const TextStyle(color: AppColor.blackDoc),
//     this.fillColor = Colors.transparent,
//     this.suffixIcon,
//     this.onChanged,
//     this.suffixIconColor,
//     this.borderRadius = 8,
//     this.fieldBorderColor = Colors.transparent,
//     this.isPassword = false,
//     this.readOnly = false,
//     super.key,
//     this.onTapClick = _defaultOnTap,
//     this.prefixIconPath,
//     this.focusBorderColor = Colors.transparent,
//     this.height = 50,
//     this.maxLength,
//     this.labelText = '',
//     this.onFieldSubmitted,
//     this.fieldHeading,
//     this.prefixIcon,
//   });
//   final String? fieldHeading;
//   final TextEditingController? textEditingController;
//   final FocusNode? focusNode;
//   final TextInputType keyboardType;
//   final TextInputAction textInputAction;
//   final Color cursorColor;
//   final TextStyle? inputTextStyle;
//   final TextAlignVertical? textAlignVertical;
//   final TextAlign textAlign;
//   final int? maxLines;
//   final int? maxLength;

//   final FormFieldValidator? validator;
//   final String? hintText;
//   final String labelText;
//   final TextStyle? hintStyle;
//   final Color? fillColor;
//   final Color? suffixIconColor;
//   final Widget? suffixIcon;
//   final double borderRadius;
//   final Color fieldBorderColor;
//   final Color focusBorderColor;
//   final void Function(String)? onChanged;
//   final void Function(String)? onFieldSubmitted;
//   final bool isPassword;
//   final String? prefixIconPath;
//   final Icon? prefixIcon;
//   final VoidCallback onTapClick;
//   final bool readOnly;
//   final double height;

//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }

// class _CustomTextFieldState extends State<CustomTextField> {
//   bool obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Padding(
//         padding: EdgeInsets.only(bottom: 10.h),
//         child: Column(
//           children: [
//             (widget.fieldHeading == null || widget.fieldHeading!.isEmpty)
//                 ? const SizedBox()
//                 : Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       widget.fieldHeading!,
//                       style: CustomTextStyle.h3(fontSize: 18.sp),
//                     ),
//                   ),
//             SizedBox(
//               height: 5.h,
//             ),
//             Container(
//               padding: EdgeInsets.all(0.r),
//               decoration: const BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0x3F000000),
//                     blurRadius: 8,
//                     offset: Offset(1, 1),
//                     spreadRadius: 0,
//                   )
//                 ],
//               ),
//               child: TextFormField(
//                 onTap: () {
//                   widget.onTapClick();
//                 },
//                 onChanged: widget.onChanged,
//                 onFieldSubmitted: widget.onFieldSubmitted,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 readOnly: widget.readOnly,
//                 controller: widget.textEditingController,
//                 focusNode: widget.focusNode,
//                 keyboardType: widget.keyboardType,
//                 textInputAction: widget.textInputAction,
//                 cursorColor: widget.cursorColor,
//                 style: widget.inputTextStyle,
//                 maxLines: widget.maxLines,
//                 maxLength: widget.maxLength,
//                 obscureText: widget.isPassword ? obscureText : false,
//                 validator: widget.validator,
//                 decoration: InputDecoration(
//                   isDense: true,
//                   errorMaxLines: 2,
//                   hintText: widget.hintText,
//                   hintStyle: widget.hintStyle,
//                   fillColor: AppColor.white50,
//                   filled: true,
//                   prefixIcon: widget.prefixIconPath != null
//                       ? Padding(
//                           padding: EdgeInsets.all(12.h),
//                           child: SvgPicture.asset(
//                             widget.prefixIconPath!,
//                             width: 10.w,
//                             height: 10.h,
//                             fit: BoxFit.cover,
//                           ),
//                         )
//                       : widget.prefixIcon,
//                   suffixIcon: widget.isPassword
//                       ? GestureDetector(
//                           onTap: toggle,
//                           child: Padding(
//                             padding: const EdgeInsetsDirectional.symmetric(
//                                 horizontal: 12, vertical: 12),
//                             child: obscureText
//                                 ? Icon(
//                                     Icons.visibility_off_outlined,
//                                     color: Colors.grey,
//                                     size: 20.h,
//                                   )
//                                 : Icon(
//                                     Icons.visibility_outlined,
//                                     color: AppColor.black,
//                                     size: 20.h,
//                                   ),
//                           ))
//                       : widget.suffixIcon,
//                   suffixIconColor: widget.suffixIconColor,
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(widget.borderRadius),
//                       borderSide:
//                           BorderSide(color: widget.fieldBorderColor, width: 0),
//                       gapPadding: 0),
//                   focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(widget.borderRadius),
//                       borderSide:
//                           BorderSide(color: widget.focusBorderColor, width: 0),
//                       gapPadding: 0),
//                   enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(widget.borderRadius),
//                       borderSide:
//                           BorderSide(color: widget.fieldBorderColor, width: 0),
//                       gapPadding: 0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void toggle() {
//     setState(() {
//       obscureText = !obscureText;
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/text_style.dart';

class CustomTextField extends StatefulWidget {
  static void _defaultOnTap() {}

  const CustomTextField({
    this.textEditingController,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.cursorColor = AppColor.black,
    this.inputTextStyle = const TextStyle(color: AppColor.black),
    this.textAlignVertical = TextAlignVertical.center,
    this.textAlign = TextAlign.start,
    this.maxLines = 1,
    this.validator,
    this.hintText,
    this.hintStyle = const TextStyle(color: AppColor.blackDoc),
    this.fillColor = Colors.transparent,
    this.suffixIcon,
    this.onChanged,
    this.suffixIconColor,
    this.borderRadius = 8,
    this.fieldBorderColor = Colors.transparent,
    this.isPassword = false,
    this.readOnly = false,
    super.key,
    this.onTapClick = _defaultOnTap,
    this.prefixIconPath,
    this.focusBorderColor = Colors.transparent,
    this.height = 50,
    this.maxLength,
    this.labelText = '',
    this.onFieldSubmitted,
    this.fieldHeading,
    this.prefixIcon,
    this.isPhoneField = false,
  });

  final String? fieldHeading;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Color cursorColor;
  final TextStyle? inputTextStyle;
  final TextAlignVertical? textAlignVertical;
  final TextAlign textAlign;
  final int? maxLines;
  final int? maxLength;
  final FormFieldValidator? validator;
  final String? hintText;
  final String labelText;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final Color? suffixIconColor;
  final Widget? suffixIcon;
  final double borderRadius;
  final Color fieldBorderColor;
  final Color focusBorderColor;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final bool isPassword;
  final String? prefixIconPath;
  final Icon? prefixIcon;
  final VoidCallback onTapClick;
  final bool readOnly;
  final double height;
  final bool isPhoneField;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Column(
          children: [
            (widget.fieldHeading == null || widget.fieldHeading!.isEmpty)
                ? const SizedBox()
                : Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.fieldHeading!,
                      style: CustomTextStyle.h3(fontSize: 18.sp),
                    ),
                  ),
            SizedBox(height: 5.h),
            Container(
              padding: EdgeInsets.all(0.r),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 8,
                    offset: Offset(1, 1),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: widget.isPhoneField
                  ? IntlPhoneField(
                      enabled: true,
                      dropdownIconPosition: IconPosition.trailing,
                      decoration: InputDecoration(
                          hintStyle: widget.hintStyle,
                          fillColor: AppColor.white,
                          filled: true,
                          hintMaxLines: 1,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 12.w),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(widget.borderRadius),
                            borderSide: BorderSide(
                                color: widget.fieldBorderColor, width: 0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(widget.borderRadius),
                            borderSide: BorderSide(
                                color: widget.focusBorderColor, width: 0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(widget.borderRadius),
                            borderSide: BorderSide(
                                color: widget.fieldBorderColor, width: 0),
                          ),
                          counterText: ""),
                      onChanged: (phone) {
                        widget.textEditingController?.text =
                            phone.completeNumber;
                        if (widget.onChanged != null) {
                          widget.onChanged!(phone.completeNumber);
                        }
                      },
                    )
                  : TextFormField(
                      onTap: widget.onTapClick,
                      onChanged: widget.onChanged,
                      onFieldSubmitted: widget.onFieldSubmitted,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      readOnly: widget.readOnly,
                      controller: widget.textEditingController,
                      focusNode: widget.focusNode,
                      keyboardType: widget.keyboardType,
                      textInputAction: widget.textInputAction,
                      cursorColor: widget.cursorColor,
                      style: widget.inputTextStyle,
                      maxLines: widget.maxLines,
                      maxLength: widget.maxLength,
                      obscureText: widget.isPassword ? obscureText : false,
                      validator: widget.validator,
                      decoration: InputDecoration(
                        isDense: true,
                        errorMaxLines: 2,
                        hintText: widget.hintText,
                        hintStyle: widget.hintStyle,
                        fillColor: AppColor.white50,
                        filled: true,
                        prefixIcon: widget.prefixIconPath != null
                            ? Padding(
                                padding: EdgeInsets.all(12.h),
                                child: SvgPicture.asset(
                                  widget.prefixIconPath!,
                                  width: 10.w,
                                  height: 10.h,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : widget.prefixIcon,
                        suffixIcon: widget.isPassword
                            ? GestureDetector(
                                onTap: toggle,
                                child: Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                          horizontal: 12, vertical: 12),
                                  child: obscureText
                                      ? Icon(Icons.visibility_off_outlined,
                                          color: Colors.grey, size: 20.h)
                                      : Icon(Icons.visibility_outlined,
                                          color: AppColor.black, size: 20.h),
                                ))
                            : widget.suffixIcon,
                        suffixIconColor: widget.suffixIconColor,
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(widget.borderRadius),
                          borderSide: BorderSide(
                              color: widget.fieldBorderColor, width: 0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(widget.borderRadius),
                          borderSide: BorderSide(
                              color: widget.focusBorderColor, width: 0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(widget.borderRadius),
                          borderSide: BorderSide(
                              color: widget.fieldBorderColor, width: 0),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
