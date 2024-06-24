import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppDirectionalButton extends StatelessWidget {
  const AppDirectionalButton({
    Key? key,
    required this.onPressed,
    this.direction,
    required this.size,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String? direction; // Added direction parameter
  final double size;

  @override
  Widget build(BuildContext context) {
    String imagePath = '';

    // Determine which image to show based on the selected direction
    switch (direction) {
      case 'up':
        imagePath = 'assets/images/up_arrow.png';
        break;
      case 'down':
        imagePath = 'assets/images/down_arrow.png';
        break;
      case 'left':
        imagePath = 'assets/images/left_arrow.png';
        break;
      case 'right':
        imagePath = 'assets/images/right_arrow.png';
        break;
      default:
        // Default to an empty image or placeholder if direction is invalid
        imagePath = 'assets/images/left_arrow.png';
        break;
    }

    return InkWell(
      onTap: onPressed,
      child: Container(
        width: size.w,
        height: size.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsManager.mainWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
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
