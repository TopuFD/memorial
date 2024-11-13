import 'package:flutter/material.dart';
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
import 'package:memorial/view/screens/profile_screen/subscription_screen.dart';
import 'package:memorial/view/screens/profile_screen/support_screen.dart';
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
  static const supportScreen = "/supportScreen";
  static const subscriptionScreen = "/subscriptionScreen";

  static List<GetPage> pages = [
    GetPage(
        name: splashScreen,
        page: () => const SplashScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: onbordingScreen,
        page: () => const OnbordingScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: authScreen,
        page: () => const AuthScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: signinScreen,
        page: () => SignInScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: signupScreen,
        page: () => SignupScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: signupOtpVerifyScreen,
        page: () => SignupOtpVerifyScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: forgotPassScreen,
        page: () => ForgotPassScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: forgotOtpVerifyScreen,
        page: () => ForgotOtpVerifyScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: resetPassScreen,
        page: () => ResetPassScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: bottomNavScreen,
        page: () => BottomNavScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: storyDetailsScreen,
        page: () => StoryDetailsScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: myStoryScreen,
        page: () => MyStoryScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: saveStoryScreen,
        page: () => const SaveStroyScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: aboutUsScreen,
        page: () => const AboutUsScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: privacyPolicyScreen,
        page: () => const PrivacyPolicyScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: termsConditionScreen,
        page: () => const TermsConditionScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: supportScreen,
        page: () => const SupportScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
    GetPage(
        name: subscriptionScreen,
        page: () => SubscriptionScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        curve: Curves.easeIn),
  ];
}
