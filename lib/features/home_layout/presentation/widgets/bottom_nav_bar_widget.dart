import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';

import '../manager/home_layout_cubit.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor: Colors.blue,
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.blueGrey,
          currentIndex: state,
          onTap: (index) => context.read<NavigationCubit>().selectTab(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, size: 20),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.table_chart, size: 20),
              label: 'Tables',
            ),
            BottomNavigationBarItem(
              icon:
                  Icon(Icons.calendar_today, size: 30), // Larger icon for News
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 20),
              label: 'Match Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store, size: 20),
              label: 'Store',
            ),
          ],
        );
      },
    );
  }
}

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
              bottom: 10.h, // Move it a bit up by increasing this value
              left: (ScreenUtil().screenWidth / 2) -
                  30.w, // Adjust the position as needed
              child: GestureDetector(
                onTap: () {
                  context
                      .read<NavigationCubit>()
                      .selectTab(2); // News tab index
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
                        // Replace with your image asset path
                        width: 60.sp, // Adjust the size of the image
                        height: 60.sp, // Adjust the size of the image
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
