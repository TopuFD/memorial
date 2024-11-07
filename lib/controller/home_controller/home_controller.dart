import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<TextEditingController> searchController = TextEditingController().obs;
  RxInt catagoryIndex = 0.obs;
}
