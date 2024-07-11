import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';

import '../manager/home_layout_cubit.dart';

class CustomNavigationBarWidget extends StatelessWidget {
  const CustomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: ColorsManager.mainWhite,
              unselectedItemColor: Colors.blueGrey,
              selectedItemColor: ColorsManager.lightRed3,
              currentIndex: state,
              onTap: (index) =>
                  context.read<NavigationCubit>().selectTab(index),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat, size: 20.sp),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.table_chart, size: 20.sp),
                  label: 'Tables',
                ),
                const BottomNavigationBarItem(
                  icon: SizedBox.shrink(), // Placeholder
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today, size: 20.sp),
                  label: 'Calendar',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.store, size: 20.sp),
                  label: 'Store',
                ),
              ],
            ),
            Positioned(
              bottom: 2.h,
              left: (ScreenUtil().screenWidth / 2) - 30.w,
              child: GestureDetector(
                onTap: () {
                  context.read<NavigationCubit>().selectTab(2);
                },
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: Image.asset(
                        'assets/images/nav_bar_image.png',
                        width: 60.sp,
                        height: 60.sp,
                        color: state == 2
                            ? ColorsManager.lightRed3
                            : Colors.blueGrey,
                      ),
                    ),
                    Text(
                      'News',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: state == 2
                            ? ColorsManager.lightRed3
                            : Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
