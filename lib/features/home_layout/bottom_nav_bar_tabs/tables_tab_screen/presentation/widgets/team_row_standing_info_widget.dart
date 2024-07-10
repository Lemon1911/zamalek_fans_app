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
          gradient: LinearGradient(
            colors: [ColorsManager.lightRed1, ColorsManager.pinkRed],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.35.w, 0.7.w],
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
                "$rank",
                style: TextStyle(
                    color: Colors.black,
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
                decoration: const BoxDecoration(
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
                    teamName,
                    style: TextStyle(
                        color: Colors.black,
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
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  width: 0.1.sw,
                  child: Text(
                    "$win",
                    style: TextStyle(
                        color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
