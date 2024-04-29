import 'package:doc_app_ui/screens/onboarding/onboarding_one_screen.dart';
import 'package:doc_app_ui/utilities/images.dart';
import 'package:doc_app_ui/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Get.off(()=>const OnBoardingOneScreen()); // Navigate to the next page using GetX
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8.h),
              height: 70.w,
              width: 70.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImage.appLogoPng)
                )
              ),
            ),
            Text(
                "Doc App",
              style: AppStyles.splashTextStyle
            )
          ],
        ),
      ),
    );
  }
}
