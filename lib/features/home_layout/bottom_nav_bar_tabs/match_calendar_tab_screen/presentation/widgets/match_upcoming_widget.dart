import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';

class MatchUpcomingWidget extends StatelessWidget {
  const MatchUpcomingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Container(
        height: 0.2.sh,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorsManager.pinkRed, ColorsManager.mainWhite],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.5.w, 0.99.w],
          ),
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: const [
            BoxShadow(
              color: Colors.black, // Shadow color
              offset: Offset(1, 1), // Shadow position
              blurRadius: 10, // Blur effect
              spreadRadius: 2, // Spread effect
            ),
            BoxShadow(
              color:
                  ColorsManager.lightRed1, // Light shadow color for 3D effect
              offset: Offset(1, 1), // Position opposite to main shadow
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
          border: Border.all(
            color: ColorsManager.lightRed1, // Light border to enhance 3D effect
            width: 1.w,
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
                child: Center(child: Text("League")),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 45.0.w,
                      height: 45.0.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/images/left_arrow.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text("data"),
                    Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            ColorsManager.lightRed1,
                            ColorsManager.mainWhite
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(
                          20.r,
                        ),
                      ),
                      child: Center(
                        child: const Text(
                          "9:30 PM",
                        ),
                      ),
                    ),
                    Text("data"),
                    Container(
                      width: 45.0.w,
                      height: 45.0.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/images/right_arrow.png",
                        fit: BoxFit.contain,
                      ),
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
                  "Cairo Staduim",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
