import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: AppString.privacyPolicy,
          )),
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: const Column(
              children: [
                Text(
                  'This Privacy Policy describes how Memorial Moments ("we", "us", or "our") collects, uses, and shares your information when you use our mobile application ("App")',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1,
                    letterSpacing: 0.48,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Information We Collect:\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text:
                            'When you use the Memorial Moments App, we may collect the following types of information.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text: '1. Profile Information:\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text:
                            'We collect information you provide when you edit your profile, including any changes to your name or email address.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text: '2. Story Information:\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text:
                            'When you add a story, we may collect the story title, date of birth, date of death (picked from the calendar), uploaded music, uploaded images, and story description.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text: '3. Subscription Information:\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text:
                            'If you choose to subscribe to our premium services, we collect payment information through our third-party payment processor, Stripe.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text: '4. Usage Information:\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text:
                            'We may collect information about how you interact with the App, including your use of features and preferences.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text: '5. How We Use Your Information:\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text:
                            'We may use the information we collect for the following purposes:\nTo provide and improve the App\'s functionality and user experience.\nTo communicate with you about your account and App-related updates.\nTo process payments for subscription services.\nTo personalize your experience and provide targeted content and advertisements.\nTo enforce our Terms of Service and other legal agreements.\nTo comply with legal obligations.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text: '6. Data Security:\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text:
                            'We take reasonable measures to protect your information from unauthorized access, use, or disclosure. However, no method of transmission over the internet or electronic storage is 100% secure.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text: '7. Data Retention:\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text:
                            'We retain your information for as long as necessary to fulfill the purposes outlined in this Privacy Policy unless a longer retention period is required or permitted by law.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text: '8. Children\'s Privacy:\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      TextSpan(
                        text:
                            'The Memorial Moments App is not intended for children under the age of 13. We do not knowingly collect or solicit personal information from children.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
