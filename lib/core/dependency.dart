import 'package:get/get.dart';
import 'package:memorial/controller/auth_controller/forgot_pass_controller.dart';
import 'package:memorial/controller/auth_controller/signin_controller.dart';
import 'package:memorial/controller/auth_controller/sitgnup_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    //=========================================auth controller
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => SigninController(), fenix: true);
    Get.lazyPut(() => ForgotPassController(), fenix: true);
  }
}
