import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/text_style.dart';

class ToastMessege {
  static toast({required String msg}) {
    Get.defaultDialog(
        content: Text(
      msg,
      style: CustomTextStyle.h3(),
    ));
  }
}
