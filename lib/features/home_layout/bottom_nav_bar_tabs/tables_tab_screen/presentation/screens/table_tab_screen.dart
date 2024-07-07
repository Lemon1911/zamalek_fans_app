import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';
import 'package:zamalek_fans_app/core/widgets/app_text_button.dart';

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
      ],
    );
  }
}
