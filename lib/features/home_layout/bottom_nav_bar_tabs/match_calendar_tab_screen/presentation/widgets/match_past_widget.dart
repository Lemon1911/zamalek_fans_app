import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchPastWidget extends StatelessWidget {
  final String homeTeam;
  final String homeTeamLogo;
  final String awayTeam;
  final String awayTeamLogo;

  const MatchPastWidget({
    Key? key,
    required this.homeTeam,
    required this.homeTeamLogo,
    required this.awayTeam,
    required this.awayTeamLogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "league",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            Text(
              'Date: ',
              style: TextStyle(fontSize: 14.sp),
            ),
            SizedBox(height: 4.h),
            Text(
              'Status: ',
              style: TextStyle(fontSize: 14.sp),
            ),
            SizedBox(height: 4.h),
            Text(
              'Stadium: ',
              style: TextStyle(fontSize: 14.sp),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.network(homeTeamLogo, height: 50.h),
                    SizedBox(height: 4.h),
                    Text(homeTeam),
                  ],
                ),
                Text(
                  '',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Image.network(awayTeamLogo, height: 50.h),
                    SizedBox(height: 4.h),
                    Text(awayTeam),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
