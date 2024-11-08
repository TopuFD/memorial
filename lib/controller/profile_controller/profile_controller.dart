import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:memorial/view/widgets/subscription_card.dart';

class ProfileController extends GetxController {
  //=======================================for my story screen
  RxInt catagoryIndex = 0.obs;

  //=======================================subscription screen
  RxInt isPackge = 0.obs;
  RxInt sliderCardIndex = 0.obs;
  List<Widget>? subscriptionList = [
    SubscriptionCard(
        cardType: "Basic",
        pageType: "Quarter Page",
        dollar: "\$ 0.7",
        consistWord: "80",
        imageCount: 2,
        activeTime: "Active 30 days"),
    SubscriptionCard(
        cardType: "Advance",
        pageType: "Hulfr Page",
        dollar: "\$ 0.9",
        consistWord: "220",
        imageCount: 3,
        activeTime: "Active 6 mounth"),
    SubscriptionCard(
        cardType: "Premium",
        pageType: "Full Page",
        dollar: "\$ 12",
        consistWord: "500",
        imageCount: 2,
        activeTime: "Active 1 year"),
  ];
}
