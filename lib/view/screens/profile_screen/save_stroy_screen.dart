import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';

import '../../../core/app_route.dart';
import '../../widgets/story_card.dart';

class SaveStroyScreen extends StatelessWidget {
  const SaveStroyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: "Saved Stories",
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return StoryCard(
                  ontap: () => Get.toNamed(AppRoute.storyDetailsScreen),
                );
              }),
        ),
      ),
    );
  }
}
