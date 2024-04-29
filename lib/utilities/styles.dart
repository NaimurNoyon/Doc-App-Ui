import 'package:doc_app_ui/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles{
  static TextStyle splashTextStyle = TextStyle(
    color: AppColor.blackHighEmp,
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle onboardingTitleTextStyle = TextStyle(
    color: AppColor.blackMidEmp,
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle onboardingSubTitleTextStyle = TextStyle(
    color: AppColor.blackLowEmp,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle customButtonTextStyle = TextStyle(
    color: AppColor.whiteHighEmp,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
}