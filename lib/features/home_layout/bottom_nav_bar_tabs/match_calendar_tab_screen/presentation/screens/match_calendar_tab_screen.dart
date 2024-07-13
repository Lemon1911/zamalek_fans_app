import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use_cases/get_past_matches.dart';
import '../../domain/use_cases/get_upcoming_matches.dart';
import '../manager/matches_cubit.dart';
import '../widgets/match_upcoming_widget.dart';

class MatchCalendarTabScreen extends StatelessWidget {
  const MatchCalendarTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MatchesCubit(
        context.read<GetPastMatches>(),
        context.read<GetUpcomingMatches>(),
      )..fetchMatches(),
      child: BlocBuilder<MatchesCubit, MatchesState>(
        builder: (context, state) {
          if (state is MatchesLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is MatchesLoaded) {
            final pastMatches = state.pastMatches;
            final upcomingMatches = state.upcomingMatches;
            return ListView(
              children: [
                ...upcomingMatches.map((match) => MatchUpcomingWidget(
                      stadium: match.stadium,
                      homeTeam: match.homeTeam,
                      homeTeamLogo: match.homeTeamLogo,
                      awayTeam: match.awayTeam,
                      awayTeamLogo: match.awayTeamLogo,
                    )),
              ],
            );
          } else if (state is MatchesError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
