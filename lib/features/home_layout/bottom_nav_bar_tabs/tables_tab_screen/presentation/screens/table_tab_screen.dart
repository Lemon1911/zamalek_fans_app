import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';
import 'package:zamalek_fans_app/core/widgets/app_text_button.dart';

import '../manager/tables_tab_screen_cubit.dart';
import '../manager/tables_tab_screen_states.dart';
import '../widgets/team_row_info_widget.dart';

class TableTabScreen extends StatelessWidget {
  TableTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: AppTextButton(
              onPressed: () {},
              buttonText: "league",
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: ColorsManager.backGroundMain),
              buttonWidth: 0.33.sw,
              buttonHeight: 50.h,
              backgroundColor: ColorsManager.camel),
        ),
        SizedBox(
          height: 20.h,
        ),
        TeamRowStandingTitle(),
        // Expanded(
        //   child: ListView.separated(
        //     itemBuilder: (context, index) => TeamRowStandingInfo(),
        //     separatorBuilder: (context, index) =>
        //         Divider(color: Colors.white, thickness: 3, height: 3),
        //     itemCount: 18,
        //   ),
        // ),
        BlocBuilder<StandingsCubit, StandingsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state.error.isNotEmpty) {
              return Center(child: Text(state.error));
            } else {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.standings.length,
                  itemBuilder: (context, index) {
                    final standing = state.standings[index];
                    return ListTile(
                      title: Text(standing.team),
                      subtitle: Text(
                          'Rank: ${standing.rank}, Points: ${standing.points}'),
                    );
                  },
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
