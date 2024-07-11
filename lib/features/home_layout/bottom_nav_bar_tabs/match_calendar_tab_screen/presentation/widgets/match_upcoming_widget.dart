import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';

// class MatchUpcomingWidget extends StatelessWidget {
//   final String homeTeam;
//   final String homeTeamLogo;
//   final String awayTeam;
//   final String awayTeamLogo;
//
//   const MatchUpcomingWidget({
//     Key? key,
//     required this.homeTeam,
//     required this.homeTeamLogo,
//     required this.awayTeam,
//     required this.awayTeamLogo,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
//       child: Padding(
//         padding: EdgeInsets.all(16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "league",
//               style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8.h),
//             Text(
//               'Date: ',
//               style: TextStyle(fontSize: 14.sp),
//             ),
//             SizedBox(height: 4.h),
//             Text(
//               'Status: ',
//               style: TextStyle(fontSize: 14.sp),
//             ),
//             SizedBox(height: 4.h),
//             Text(
//               'Stadium: ',
//               style: TextStyle(fontSize: 14.sp),
//             ),
//             SizedBox(height: 16.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   children: [
//                     Image.network(homeTeamLogo, height: 50.h),
//                     SizedBox(height: 4.h),
//                     Text(homeTeam),
//                   ],
//                 ),
//                 Text(
//                   '',
//                   style:
//                       TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
//                 ),
//                 Column(
//                   children: [
//                     Image.network(awayTeamLogo, height: 50.h),
//                     SizedBox(height: 4.h),
//                     Text(awayTeam),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MatchUpcomingWidget extends StatelessWidget {
  final String stadium;
  final String homeTeam;
  final String homeTeamLogo;
  final String awayTeam;
  final String awayTeamLogo;

  const MatchUpcomingWidget({
    Key? key,
    required this.stadium,
    required this.homeTeam,
    required this.homeTeamLogo,
    required this.awayTeam,
    required this.awayTeamLogo,
  }) : super(key: key);

  String _truncateText(String text, int maxLength) {
    if (text.length > maxLength) {
      return text.substring(0, maxLength) + '...';
    } else {
      return text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Container(
        height: 0.2.sh,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [ColorsManager.pinkRed, ColorsManager.mainWhite],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.5, 0.99],
          ),
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(1, 1),
              blurRadius: 10,
              spreadRadius: 2,
            ),
            BoxShadow(
              color: ColorsManager.lightRed1,
              offset: Offset(1, 1),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
          border: Border.all(
            color: ColorsManager.lightRed1,
            width: 1,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 1,
              right: 0.30.sw,
              left: 0.30.sw,
              child: Container(
                height: 35.h,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [ColorsManager.lightRed1, ColorsManager.mainWhite],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                ),
                child: Center(child: Text("league")),
              ),
            ),
            Positioned(
              top: 45.h,
              left: 10.w,
              right: 10.w,
              child: Container(
                height: 70.h,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 40.0.w,
                          height: 40.0.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.network(
                            homeTeamLogo,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          _truncateText(homeTeam, 10),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ],
                    ),
                    Text(
                      "date",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 40.0.w,
                          height: 40.0.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.network(
                            awayTeamLogo,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          _truncateText(awayTeam, 10),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              right: 0.30.sw,
              left: 0.30.sw,
              child: Container(
                height: 35.h,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [ColorsManager.lightRed1, ColorsManager.mainWhite],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    stadium,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
