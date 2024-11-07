import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ForgotPassController extends GetxController {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<TextEditingController> newPass = TextEditingController().obs;
  Rx<TextEditingController> confirmPass = TextEditingController().obs;
}
