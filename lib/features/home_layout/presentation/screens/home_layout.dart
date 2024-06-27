import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../news_tab_screen/presentation/pages/news_tab_screen.dart';
import '../manager/home_layout_cubit.dart';
import '../widgets/bottom_nav_bar_widegt.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({super.key});

  final List<Widget> screens = [
    NewsTabScreen(),
    TablesTabScreen(),
    MatchCalendarTabScreen(),
    MatchChatsTabScreen(),
    StoreTabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationCubit, NavigationTab>(
        builder: (context, state) {
          return screens[NavigationTab.values.indexOf(state)];
        },
      ),
      bottomNavigationBar: NavigationBarWidget(),
    );
  }
}
