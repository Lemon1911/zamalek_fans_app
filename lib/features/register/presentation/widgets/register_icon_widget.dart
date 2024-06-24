import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterIconWidget extends StatelessWidget {
  const RegisterIconWidget(
      {super.key,
      required this.onPressed,
      this.direction,
      required this.size,
      required this.imagePath});

  final VoidCallback onPressed;
  final String? direction; // Added direction parameter
  final double size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: size.w,
        height: size.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            imagePath,
            width: size.w * 0.8,
            height: size.h * 0.8,
          ),
        ),
      ),
    );
  }
}
