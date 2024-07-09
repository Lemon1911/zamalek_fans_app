import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';

class TeamRowStandingInfo extends StatelessWidget {
  final int rank;
  final String teamName;
  final String teamLogo;
  final int points;
  final int matchesPlayed;
  final int win;
  final int draw;
  final int lose;

  const TeamRowStandingInfo({
    Key? key,
    required this.rank,
    required this.teamName,
    required this.teamLogo,
    required this.points,
    required this.matchesPlayed,
    required this.win,
    required this.draw,
    required this.lose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      child: Container(
        height: 50.h,
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
                "$rank",
                style: TextStyle(
                    color: ColorsManager.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 0.1.sw,
              child: Container(
                width: 35.0.w,
                height: 35.0.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  teamLogo,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 0.30.sw,
                  child: Text(
                    "$teamName",
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
                    "$matchesPlayed",
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
                    "$win",
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
                    "$draw",
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
                    "$lose",
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
                    "$points",
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
