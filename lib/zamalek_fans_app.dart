import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/routing/app_router.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';

import 'core/routing/routes.dart';

class ZamalekFansApp extends StatelessWidget {
  final AppRouter appRouter;

  const ZamalekFansApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsManager.backGroundMain,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
