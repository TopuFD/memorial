import 'package:get/get.dart';
import 'package:memorial/view/screens/auth_screen/auth_screen.dart';
import 'package:memorial/view/screens/auth_screen/forget_pass/forgot_otp_screen.dart';
import 'package:memorial/view/screens/auth_screen/forget_pass/forgot_pass_screen.dart';
import 'package:memorial/view/screens/auth_screen/forget_pass/reset_pass_screen.dart';
import 'package:memorial/view/screens/auth_screen/signin/sign_in_screen.dart';
import 'package:memorial/view/screens/auth_screen/signup/signup_otp_verify_screen.dart';
import 'package:memorial/view/screens/auth_screen/signup/signup_screen.dart';
import 'package:memorial/view/screens/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:memorial/view/screens/home_screen/story_details.dart';
import 'package:memorial/view/screens/splash_screen/onbording_screen.dart';
import 'package:memorial/view/screens/splash_screen/splash_screen.dart';

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
  ];
}
