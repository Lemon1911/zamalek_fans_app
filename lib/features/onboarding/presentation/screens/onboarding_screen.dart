import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_text_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            FadeInUpBig(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background_photo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FadeInDown(
                      delay: const Duration(microseconds: 200),
                      child: SizedBox(
                        height: 300.h,
                        child: const Image(
                          image: AssetImage(
                            "assets/images/main_logo.png",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    FadeInLeftBig(
                      delay: const Duration(microseconds: 250),
                      child: AppTextButton(
                        buttonText: "Log in",
                        backgroundColor:
                            ColorsManager.lightRed3.withOpacity(0.7),
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.loginScreen);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    FadeInRightBig(
                      delay: const Duration(microseconds: 300),
                      child: AppTextButton(
                        buttonText: "Sign up",
                        backgroundColor:
                            ColorsManager.lightRed3.withOpacity(0.7),
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.registerScreen);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
