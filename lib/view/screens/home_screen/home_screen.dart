import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/controller/home_controller/home_controller.dart';
import 'package:memorial/controller/profile_controller/profile_controller.dart';
import 'package:memorial/core/app_route.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/screens/home_screen/drawer_screen/custom_drawer.dart';
import 'package:memorial/view/widgets/cutom_network_image.dart';
import 'package:memorial/view/widgets/story_card.dart';

import '../../../controller/payment_controller/payment_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController homeController = Get.find<HomeController>();
  final ProfileController profileController = Get.find<ProfileController>();
  final PaymentcController paymentcController = Get.find<PaymentcController>();

  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.skyColor,
      extendBody: true,
      drawer: const CustomDrawer(),
      onDrawerChanged: (isOpened) {
        if (isOpened) {
          homeController.isOverlayVisible.value = false;
          homeController.isDrawerOpen.value = isOpened;
        }
      },
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColor.skyColor,
        actions: [
          InkWell(
              onTap: () => Get.toNamed(AppRoute.notificationScreen),
              child: Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: SvgPicture.asset(AppImage.notification),
              )),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  //====================================================================user profile image
                  Row(
                    children: [
                      Container(
                        height: 60.h,
                        width: 60.w,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CustomNetworkImage(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF6YcyD5m5o7C_mj8M71hGT6k-J-7-D79-lw&s",
                          height: 60.h,
                          width: 60.w,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "WelCome!",
                            style: CustomTextStyle.h1(fontSize: 18.sp),
                          ),
                          Text(
                            "Motashin Billah",
                            style: CustomTextStyle.h1(
                                color: AppColor.black, fontSize: 20.sp),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //=======================================================================================search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      focusNode: _focusNode,
                      controller: homeController.searchController.value,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.lightBlue[100],
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey[700]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus(); // Close keyboard
                          },
                          child: Icon(Icons.search, color: Colors.grey[700]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //============================================================================================catagory
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        customCatagory(
                          title: "All",
                          index: 0,
                          weight: 100.w,
                          ontap: () {
                            homeController.catagoryIndex.value = 0;
                          },
                        ),
                        customCatagory(
                          title: "Loved Ones",
                          index: 1,
                          weight: 100.w,
                          ontap: () {
                            homeController.catagoryIndex.value = 1;
                          },
                        ),
                        customCatagory(
                          title: "Veterans Memorial Moments",
                          index: 2,
                          weight: 148.w,
                          ontap: () {
                            homeController.catagoryIndex.value = 2;
                          },
                        ),
                        customCatagory(
                          title: "Pets Memorial Moments",
                          index: 3,
                          weight: 148.w,
                          ontap: () {
                            homeController.catagoryIndex.value = 3;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  //===========================================================================================story card
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return StoryCard(
                          ontap: () => Get.toNamed(AppRoute.storyDetailsScreen),
                        );
                      })
                ],
              ),
            ),
          ),
          //=============================================================================================overlay positioned
          Obx(() {
            return homeController.isOverlayVisible.value == true &&
                    homeController.isDrawerOpen.value == false &&
                    paymentcController.isPay.value == false
                ? Positioned.fill(
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 10),
                      color: Colors.black.withOpacity(0.8),
                      child: CarouselSlider(
                          items: profileController.subscriptionList,
                          options: CarouselOptions(
                            height: 450.h,
                            aspectRatio: 16 / 10,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 2000),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            onPageChanged: (index, reson) {
                              profileController.sliderCardIndex.value = index;
                            },
                            enlargeFactor: 0.2,
                            scrollDirection: Axis.horizontal,
                          )),
                    ),
                  )
                : const SizedBox();
          }),
        ],
      ),
    );
  }

  //=============================================================================custom catagory
  customCatagory(
      {String? title, double? weight, int? index, VoidCallback? ontap}) {
    return Obx(() {
      return InkWell(
        onTap: ontap,
        child: AnimatedContainer(
          margin: EdgeInsets.only(right: 8.w),
          duration: const Duration(milliseconds: 500),
          height: 56.h,
          width: weight,
          decoration: BoxDecoration(
              border: homeController.catagoryIndex.value != index
                  ? Border.all(
                      color: AppColor.skyDeep,
                    )
                  : Border.all(color: Colors.transparent),
              color: homeController.catagoryIndex.value == index
                  ? AppColor.skyDeep
                  : AppColor.skyColor,
              borderRadius: BorderRadius.circular(12.r)),
          child: Center(
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: CustomTextStyle.h3(fontSize: 15.sp),
            ),
          ),
        ),
      );
    });
  }
  //==================================================================drawer
}
