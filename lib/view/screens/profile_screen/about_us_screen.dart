import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/utils/text_style.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.h),
            child: CustomAppbar(
              title: AppString.aboutUs,
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
            child: Text(
              textAlign: TextAlign.justify,
              """Memorial Moments Magazine is your Magazine; let me explain: When you pick up a magazine, Better Living, Jet, Ebony, Vogue and open it……Let me stop, who buys magazines these days?  We are in a electronic, digital, satellite and now AI thriving world.  Memorial Moments Magazine has been around since 2010 in paperback form.  Now that we are in the time of the electronic boom, Memorial Moments Magazine has moved with the times. Those Magazines would write about the famous celebrities who has passed on, they talk about different times of their lives expressing their struggles, pitfalls, rejections, and acceptance that helped to define who they became to be.  This is what Memorial Moments Magazine is extending to you and your family.
          
          Memorial Moments has given you a Magazine that provides a platform for you to write your story about your Loved One, Veteran or your Pet, that has stepped out of this life and into the next level of their life.  The story you will write is from your point of view of who they were and how important they were to you in your life.  You will have the opportunity to say what you did not get a chance to say at the funeral, of what most did not know, of the special things that loved one did just for YOU.  You might want to write about a Veteran that father, mom, uncle, grandparent, who served their Nation, may it be United Armed Forces, Police Force, Fire Fighter and Security in many forms.  Let’s not forget about that other family member that always showed love and loyalty, your Pet.  Yes, you can write about that lovable little one or big one that would cheer you up and put a smile on your face when nobody else could they are truly missed. You now have time and opportunity to celebrate and commemorate your Loved One, Veteran and Pet in a very tasteful, professional, and respectful way that you did not have at the time of their departure.
          
          Memorial Moments Magazine has a staff that will handle the story of your Loved One, Veteran, or Pet with professionalism and care, that can be expected.  Our staff will work earnestly for you to achieve your satisfaction.  We will only publish what you have given us, staying within the boundaries of the Terms and Conditions.  Memorial Moments Magazine is at your service to help you celebrate and commemorate the memories of your family member who has moved out of this life and into the next level of their life.
          
          Peace and Blessings,
          Dr. Bruce B. Matthews, President and CEO.""",
              style: CustomTextStyle.h3(fontSize: 18.sp),
            ),
          ),
        ));
  }
}
