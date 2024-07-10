import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';

class TeamRowStandingTitle extends StatelessWidget {
  const TeamRowStandingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Container(
        height: 45.h,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorsManager.lightRed1, ColorsManager.pinkRed],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.45.w, 0],
          ),
          borderRadius: BorderRadius.circular(
            5.r,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 0.05.sw,
              child: Text(
                "#",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 0.40.sw,
                  child: Text(
                    "Teams",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "P",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "W",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "D",
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "L",
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "Pts",
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
