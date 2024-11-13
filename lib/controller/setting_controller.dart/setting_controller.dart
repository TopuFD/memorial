import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  Rx<TextEditingController> currentPass = TextEditingController().obs;
  Rx<TextEditingController> newPass = TextEditingController().obs;
  Rx<TextEditingController> confirmPass = TextEditingController().obs;
}
