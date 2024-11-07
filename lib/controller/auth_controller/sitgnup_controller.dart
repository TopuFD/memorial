import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passController = TextEditingController().obs;
  Rx<TextEditingController> comfPassController = TextEditingController().obs;
  Rx<TextEditingController> signupOtpController = TextEditingController().obs;
  RxBool isAgree = false.obs;
}
