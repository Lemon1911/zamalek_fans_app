import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';

class TeamRowStandingInfo extends StatelessWidget {
  const TeamRowStandingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      child: Container(
        height: 45.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5,
            ),
            color: ColorsManager.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 0.05.sw,
              child: Text(
                "1",
                style: TextStyle(
                    color: ColorsManager.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 0.1.sw,
              child: Container(
                width: 30.0.w,
                height: 30.0.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/images/left_arrow.png"),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 0.30.sw,
                  child: Text(
                    "  Zamalek",
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "20",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "20",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "18",
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "18",
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "43",
                    style: TextStyle(
                        color: ColorsManager.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp),
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
            borderRadius: BorderRadius.circular(
              5.r,
            ),
            color: ColorsManager.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 0.05.sw,
              child: Text(
                "#",
                style: TextStyle(
                    color: ColorsManager.mainWhite,
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
                        color: ColorsManager.mainWhite,
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
                        fontSize: 18.sp),
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
