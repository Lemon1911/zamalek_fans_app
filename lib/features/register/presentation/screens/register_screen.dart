import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';
import 'package:zamalek_fans_app/core/widgets/app_text_button.dart';
import 'package:zamalek_fans_app/core/widgets/app_text_form_field.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/validationUtils/validationUtils.dart';
import '../../../../core/widgets/app_directional_button.dart';
import '../manager/register_cubit.dart';
import '../manager/register_state.dart';
import '../widgets/register_icon_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            FadeInUpBig(
              delay: Duration(microseconds: 50),
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
                    SizedBox(
                      height: 200.h,
                      child: const Image(
                        image: AssetImage("assets/images/main_logo.png"),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          AppTextFormField(
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return "Please enter your Name";
                              }

                              return null;
                            },
                            keyboardType: TextInputType.text,
                            controller: nameController,
                            hintText: "Name",
                            backgroundColor:
                                ColorsManager.mainWhite.withOpacity(0.5),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          AppTextFormField(
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return "Please enter your Email";
                              }
                              if (!isValidEmail(text)) {
                                return "Please enter a valid Email";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            hintText: "Email",
                            backgroundColor:
                                ColorsManager.mainWhite.withOpacity(0.5),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          AppTextFormField(
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return "Please enter your phone number";
                              }

                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            controller: phoneController,
                            hintText: "Phone",
                            backgroundColor:
                                ColorsManager.mainWhite.withOpacity(0.5),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          AppTextFormField(
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return "Please enter your Password";
                              }
                              if (text.length < 6) {
                                return "At least 6 Characters";
                              }
                              return null;
                            },
                            controller: passwordController,
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
                          BlocConsumer<RegisterCubit, RegisterState>(
                            listener: (context, state) {
                              if (state is RegisterSuccess) {
                                // Navigate to another screen on successful registration
                                Navigator.pushNamed(context, Routes.homeLayout);
                              } else if (state is RegisterFailure) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(state.error)),
                                );
                              }
                            },
                            builder: (context, state) {
                              if (state is RegisterLoading) {
                                return CircularProgressIndicator();
                              }
                              return AppTextButton(
                                buttonText: "Register",
                                backgroundColor:
                                    ColorsManager.lightRed3.withOpacity(0.7),
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.sp,
                                ),
                                onPressed: () {
                                  if (formKey.currentState?.validate() ==
                                      true) {
                                    BlocProvider.of<RegisterCubit>(context)
                                        .register(
                                      emailController.text,
                                      passwordController.text,
                                      nameController.text,
                                      phoneController.text,
                                    );
                                  }
                                },
                              );
                            },
                          ),
                          SizedBox(height: 25.h),
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
                                size: 50,
                                imagePath: "assets/images/google.png",
                              ),
                            ],
                          ),
                        ],
                      ),
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
