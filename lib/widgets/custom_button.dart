import 'package:doc_app_ui/utilities/colors.dart';
import 'package:doc_app_ui/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';

class CustomOnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap; // Change Function to VoidCallback

  const CustomOnboardingButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54.h,
        decoration: BoxDecoration(
          color: AppColor.colorPrimaryDark,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyles.customButtonTextStyle,
          ),
        ),
      ),
    );
  }
}


class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAll(() => const HomeScreen(),
          transition: Transition.rightToLeftWithFade, // Example transition
        );
      },
      child:Text(
        "Skip",
        textAlign: TextAlign.center,
        style: AppStyles.onboardingSubTitleTextStyle,
      ),
    );
  }
}
