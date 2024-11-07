import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/color.dart';
import 'package:memorial/utils/image.dart';
import 'package:memorial/view/widgets/cutom_network_image.dart';

class StoryCard extends StatefulWidget {
  const StoryCard({super.key});

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  int currentIndex = 0;
  List<Widget> imageList = [
    CustomNetworkImage(
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCxoOmt7MSWjexSliVpwBBkxBs5jfMdFuipg&s",
        height: 200.h,
        width: 360.w),
    CustomNetworkImage(
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY_Gz153LkAbbdMMQTbK0ihepa3HOszAYvQQ&s",
        height: 200.h,
        width: 360.w),
    CustomNetworkImage(
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrWpVvB18in1MoQB6z7Tv4XSOEEbqfNrHtTg&s",
        height: 200.h,
        width: 360.w),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 448.h,
      margin: EdgeInsets.only(bottom: 40.h),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 8,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider(
                  items: imageList,
                  options: CarouselOptions(
                    height: 280.h,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reson) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
              Positioned(
                  bottom: 40.h,
                  left: Get.width / 2.7,
                  child: SizedBox(
                    height: 14.h,
                    width: Get.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return customIndicator(index: index);
                        }),
                  ))
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Beloved Grandpa',
                  style: TextStyle(
                    color: const Color(0xFF29272E),
                    fontSize: 24.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.96,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'A family that are going to the cemetery for their family person.',
                  style: TextStyle(
                    color: const Color(0xFF615F68),
                    fontSize: 16.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.64,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.message,
                      size: 20.h,
                      color: const Color(0xFF5C5F66),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '4 Comments',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF5C5F66),
                        fontSize: 16.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                        letterSpacing: -0.03,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '220 Words.',
                      style: TextStyle(
                        color: const Color(0xFFA7A5AC),
                        fontSize: 16.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.64,
                      ),
                    ),
                    SvgPicture.asset(AppImage.storyCardLogo)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  customIndicator({int? index}) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        height: 14.h,
        width: 14.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex != index ? AppColor.white : AppColor.skyDeep),
      ),
    );
  }
}