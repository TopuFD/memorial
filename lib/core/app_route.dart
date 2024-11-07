import 'package:get/get.dart';
import 'package:memorial/view/screens/auth_screen/auth_screen.dart';
import 'package:memorial/view/screens/auth_screen/signin/sign_in_screen.dart';
import 'package:memorial/view/screens/splash_screen/onbording_screen.dart';
import 'package:memorial/view/screens/splash_screen/splash_screen.dart';

class AppRoute {
  static const splashScreen = "/splashScreen";
  static const onbordingScreen = "/onbordingScreen";
  static const authScreen = "/authScreen";
  static const signinScreen = "/signinScreen";

  static List<GetPage> pages = [
    GetPage(
        name: splashScreen,
        page: () => SplashScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: onbordingScreen,
        page: () => OnbordingScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: authScreen,
        page: () => AuthScreen(),
        transition: Transition.cupertino),
    GetPage(
        name: signinScreen,
        page: () => SignInScreen(),
        transition: Transition.cupertino)
  ];
}
