import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<TextEditingController> searchController = TextEditingController().obs;
  Rx<TextEditingController> comentController = TextEditingController().obs;
  RxList commentList = [].obs;
  RxInt catagoryIndex = 0.obs;

  RxBool isOverlayVisible = false.obs;
  RxBool isDrawerOpen = false.obs;
  //============================================================notification
  RxBool isfirstIndex = true.obs;
}
