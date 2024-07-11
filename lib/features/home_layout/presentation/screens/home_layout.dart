import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';
import 'package:zamalek_fans_app/features/home_layout/bottom_nav_bar_tabs/chat_tab_screen/presentation/screens/chat_tab_screen.dart';
import 'package:zamalek_fans_app/features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/presentation/screens/match_calendar_tab_screen.dart';
import 'package:zamalek_fans_app/features/home_layout/bottom_nav_bar_tabs/store_tab_screen/presentation/screens/store_tab_screen.dart';

import '../../../../core/injections/di_setup.dart';
import '../../bottom_nav_bar_tabs/match_calendar_tab_screen/domain/use_cases/get_past_matches.dart';
import '../../bottom_nav_bar_tabs/match_calendar_tab_screen/domain/use_cases/get_upcoming_matches.dart';
import '../../bottom_nav_bar_tabs/news_tab_screen/presentation/screens/news_tab_screen.dart';
import '../../bottom_nav_bar_tabs/tables_tab_screen/presentation/screens/table_tab_screen.dart';
import '../manager/home_layout_cubit.dart';
import '../widgets/bottom_nav_bar_widget.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({super.key});

  final List<Widget> screens = [
    const ChatTabScreen(),
    const TableTabScreen(),
    const NewsTabScreen(),
    const MatchCalendarTabScreen(),
    const StoreTabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<GetPastMatches>(create: (_) => getIt<GetPastMatches>()),
        Provider<GetUpcomingMatches>(
            create: (_) => getIt<GetUpcomingMatches>()),
      ],
      child: BlocProvider(
        create: (_) => NavigationCubit(),
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: ColorsManager.blue,
              toolbarHeight: 0.20.sh,
            ),
            body: BlocBuilder<NavigationCubit, int>(
              builder: (context, state) {
                return screens[state];
              },
            ),
            bottomNavigationBar: const CustomNavigationBarWidget(),
          ),
        ),
      ),
    );
  }
}
