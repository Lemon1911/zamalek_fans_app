import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';

typedef Validator = String? Function(String?);

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.focusBorder,
    this.contentPadding,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.hint,
  });

  final InputBorder? focusBorder;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final String? hint;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Validator? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: hint,
        errorStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 26.w,
              vertical: 24.h,
            ),
        focusedBorder: focusBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lightRed3,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lightRed3,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
        hintStyle: hintStyle ??
            const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: ColorsManager.lightRed3,
            ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? Colors.white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 19,
        color: ColorsManager.lightRed3,
      ),
    );
  }
}
