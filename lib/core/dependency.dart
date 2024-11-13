import 'package:get/get.dart';
import 'package:memorial/controller/auth_controller/forgot_pass_controller.dart';
import 'package:memorial/controller/auth_controller/signin_controller.dart';
import 'package:memorial/controller/auth_controller/sitgnup_controller.dart';
import 'package:memorial/controller/home_controller/home_controller.dart';
import 'package:memorial/controller/profile_controller/profile_controller.dart';
import 'package:memorial/controller/setting_controller.dart/setting_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    //=========================================auth controller
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => SigninController(), fenix: true);
    Get.lazyPut(() => ForgotPassController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => SettingController(), fenix: true);
  }
}
