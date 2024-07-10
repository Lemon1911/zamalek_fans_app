import 'package:flutter/material.dart';
import 'package:zamalek_fans_app/features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/presentation/widgets/match_upcoming_widget.dart';

class MatchCalenderTabScreen extends StatelessWidget {
  const MatchCalenderTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MatchUpcomingWidget(),
      ],
    );
  }
}
