import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';

import '../manager/standings_cubit.dart';
import '../widgets/team_row_standing_info_widget.dart';
import '../widgets/team_row_standing_title_widget.dart';

class TableTabScreen extends StatelessWidget {
  const TableTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<StandingsCubit>()..fetchStandings(),
      child: Column(
        children: [
          const TeamRowStandingTitle(),
          BlocBuilder<StandingsCubit, StandingsState>(
            builder: (context, state) {
              if (state is StandingsLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is StandingsLoaded) {
                return Expanded(
                  child: ListView.separated(
                    itemCount: state.standings.length,
                    itemBuilder: (context, index) {
                      final standing = state.standings[index];
                      return TeamRowStandingInfo(
                        rank: standing.rank,
                        teamName: standing.teamName,
                        teamLogo: standing.teamLogo,
                        points: standing.points,
                        matchesPlayed: standing.matchesPlayed,
                        win: standing.win,
                        draw: standing.draw,
                        lose: standing.lose,
                      );
                    },
                    separatorBuilder: (context, index) => Divider(
                      color: ColorsManager.mainWhite,
                      thickness: 1.w,
                      height: 1.h,
                    ),
                  ),
                );
              } else if (state is StandingsError) {
                return Center(child: Text('Error: ${state.message}'));
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
