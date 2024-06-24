import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';
import 'package:zamalek_fans_app/core/widgets/app_text_button.dart';
import 'package:zamalek_fans_app/core/widgets/app_text_form_field.dart';
import 'package:zamalek_fans_app/features/register/presentation/widgets/register_icon_widget.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_directional_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background_photo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150.h,
                      child: const Image(
                        image: AssetImage(
                          "assets/images/zamalek_arabic_word.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          AppTextFormField(
                            hintText: "Name",
                            backgroundColor:
                                ColorsManager.mainWhite.withOpacity(0.5),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          AppTextFormField(
                            hintText: "Email",
                            backgroundColor:
                                ColorsManager.mainWhite.withOpacity(0.5),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          AppTextFormField(
                            hintText: "Password",
                            backgroundColor:
                                ColorsManager.mainWhite.withOpacity(0.5),
                            isObscureText: isObscureText,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              child: Icon(
                                color: Colors.blueGrey,
                                isObscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          AppTextFormField(
                            hintText: "Password",
                            backgroundColor:
                                ColorsManager.mainWhite.withOpacity(0.5),
                            isObscureText: isObscureText,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              child: Icon(
                                color: Colors.blueGrey,
                                isObscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          AppTextButton(
                            buttonText: "Sign up",
                            backgroundColor:
                                ColorsManager.lightRed3.withOpacity(0.7),
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Or Sign up with",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RegisterIconWidget(
                          onPressed: () {},
                          size: 50,
                          imagePath: "assets/images/facebook.png",
                        ),
                        RegisterIconWidget(
                          onPressed: () {},
                          size: 40,
                          imagePath: "assets/images/google.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: AppDirectionalButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.onBoardingScreen);
                },
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
