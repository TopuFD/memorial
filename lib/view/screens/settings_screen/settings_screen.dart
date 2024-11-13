import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/core/app_route.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';

import '../../widgets/custom_dialog.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: AppString.settings,
          )),
      body: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            //==================================================================change password
            settingsItem(
              title: AppString.changePass,
              svgPath: AppImage.lockLogo,
              ontap: () => Get.toNamed(AppRoute.changePassScreen),
            ),
            //==================================================================privacy policy
            settingsItem(
              title: AppString.privacyPolicy,
              svgPath: AppImage.policy,
              ontap: () => Get.toNamed(AppRoute.privacyPolicyScreen),
            ),
            //==================================================================terms and condition
            settingsItem(
              title: AppString.terms,
              svgPath: AppImage.terms,
              ontap: () => Get.toNamed(AppRoute.termsConditionScreen),
            ),
            //==================================================================delete account
            settingsItem(
              title: AppString.deleteAccount,
              svgPath: AppImage.delete,
              ontap: () => CustomDialog()
                  .customDialog(context: context, isDeletAccout: true),
            ),
          ],
        ),
      ),
    );
  }

  //==============================================================================settings item
  settingsItem({String? svgPath, String? title, VoidCallback? ontap}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: InkWell(
        onTap: ontap,
        child: Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              depth: 5,
              lightSource: LightSource.bottom,
              color: Colors.grey.shade200,
              shadowLightColor: AppColor.blueColor,
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(16.r))),
          child: Container(
            width: 361.w,
            height: 56.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(width: 1.w, color: AppColor.black)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(svgPath!),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      title!,
                      style: CustomTextStyle.h4(),
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.black,
                  size: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
