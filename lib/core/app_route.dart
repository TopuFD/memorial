import 'package:get/get.dart';
import 'package:memorial/view/profile_screen/profile_screen.dart';
import 'package:memorial/view/screens/auth_screen/auth_screen.dart';
import 'package:memorial/view/screens/auth_screen/forget_pass/forgot_otp_screen.dart';
import 'package:memorial/view/screens/auth_screen/forget_pass/forgot_pass_screen.dart';
import 'package:memorial/view/screens/auth_screen/forget_pass/reset_pass_screen.dart';
import 'package:memorial/view/screens/auth_screen/signin/sign_in_screen.dart';
import 'package:memorial/view/screens/auth_screen/signup/signup_otp_verify_screen.dart';
import 'package:memorial/view/screens/auth_screen/signup/signup_screen.dart';
import 'package:memorial/view/screens/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:memorial/view/screens/home_screen/story_details.dart';
import 'package:memorial/view/screens/profile_screen/about_us_screen.dart';
import 'package:memorial/view/screens/profile_screen/my_story_screen.dart';
import 'package:memorial/view/screens/profile_screen/save_stroy_screen.dart';
import 'package:memorial/view/screens/profile_screen/terms_condition_screen.dart';
import 'package:memorial/view/screens/splash_screen/onbording_screen.dart';
import 'package:memorial/view/screens/splash_screen/splash_screen.dart';

import '../view/screens/profile_screen/privacy_policy_screen.dart';

class AppRoute {
  //=====================================splash and onbording
  static const splashScreen = "/splashScreen";
  static const onbordingScreen = "/onbordingScreen";

  //=====================================auth screen
  static const authScreen = "/authScreen";
  static const signinScreen = "/signinScreen";
  static const signupScreen = "/signupScreen";
  static const signupOtpVerifyScreen = "/signupOtpVerifyScreen";
  static const forgotPassScreen = "/forgotPassScreen";
  static const forgotOtpVerifyScreen = "/forgotOtpVerifyScreen";
  static const resetPassScreen = "/resetPassScreen";
  //===============================================bottom nav screen
  static const bottomNavScreen = "/bottomNavScreen";
  //===============================================home screen
  static const storyDetailsScreen = "/storyDetailsScreen";

  //===================================================ProfileScreen
  static const myStoryScreen = "/myStoryScreen";
  static const saveStoryScreen = "/saveStoryScreen";
  static const aboutUsScreen = "/aboutUsScreen";
  static const privacyPolicyScreen = "/privacyPolicyScreen";
  static const termsConditionScreen = "/termsConditionScreen";

  static List<GetPage> pages = [
    GetPage(
        name: splashScreen,
        page: () => SplashScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: onbordingScreen,
        page: () => OnbordingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: authScreen,
        page: () => AuthScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: signinScreen,
        page: () => SignInScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: signupScreen,
        page: () => SignupScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: signupOtpVerifyScreen,
        page: () => SignupOtpVerifyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: forgotPassScreen,
        page: () => ForgotPassScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: forgotOtpVerifyScreen,
        page: () => ForgotOtpVerifyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: resetPassScreen,
        page: () => ResetPassScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: bottomNavScreen,
        page: () => BottomNavScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: storyDetailsScreen,
        page: () => StoryDetailsScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: myStoryScreen,
        page: () => MyStoryScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: saveStoryScreen,
        page: () => SaveStroyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: aboutUsScreen,
        page: () => AboutUsScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: privacyPolicyScreen,
        page: () => PrivacyPolicyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: termsConditionScreen,
        page: () => TermsConditionScreen(),
        transition: Transition.rightToLeftWithFade),
  ];
}
