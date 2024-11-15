import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentcController extends GetxController {
  Rx<TextEditingController> cardName = TextEditingController().obs;
  Rx<TextEditingController> cardNumber = TextEditingController().obs;
  Rx<TextEditingController> cvcNumber = TextEditingController().obs;
  Rx<TextEditingController> expiration = TextEditingController().obs;
  Rx<TextEditingController> country = TextEditingController().obs;
  RxBool isPay = false.obs;
}
