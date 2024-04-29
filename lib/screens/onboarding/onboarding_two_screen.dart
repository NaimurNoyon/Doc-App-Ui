import 'package:doc_app_ui/utilities/colors.dart';
import 'package:doc_app_ui/utilities/images.dart';
import 'package:doc_app_ui/utilities/strings.dart';
import 'package:doc_app_ui/utilities/styles.dart';
import 'package:doc_app_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'onboarding_three_screnn.dart';

class OnBoardingTwoScreen extends StatelessWidget {
  const OnBoardingTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteHighEmp,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              Container(
                height: 336.h,
                width: 336.h,
                margin: EdgeInsets.only(top: 90.h,bottom: 70.h),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(AppImage.onBoardingTwoPng)
                    )
                ),
              ),
              Text(
                AppString.onBoardingTwoTitle,
                style: AppStyles.onboardingTitleTextStyle,
              ),
              SizedBox(height: 12.h,),
              Text(
                AppString.onBoardingThreeSubTitle,
                textAlign: TextAlign.center,
                style: AppStyles.onboardingSubTitleTextStyle,
              ),
              SizedBox(height: 60.h,),
              CustomOnboardingButton(
                text: "Next",
                onTap: () {
                  Get.to(() => const OnBoardingThreeScreen(),
                    transition: Transition.rightToLeftWithFade, // Example transition
                  );
                },
              ),
              SizedBox(height: 16.h,),
              const CustomSkipButton()
            ],
          ),
        ),
      ),
    );
  }
}
