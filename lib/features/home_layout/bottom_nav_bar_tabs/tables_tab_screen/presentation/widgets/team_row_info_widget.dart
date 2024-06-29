import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/core/theming/colors.dart';

class TeamRowStandingInfo extends StatelessWidget {
  const TeamRowStandingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
          height: 45.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5,
              ),
              color: ColorsManager.camel),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 0.05.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("1"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(
                    AssetImage(
                      "assets",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 0.24.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Zamalek"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("31"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("31"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("31"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("31"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("31"),
                ),
              ),
            ],
          )),
    );
  }
}

class TeamRowStandingTitle extends StatelessWidget {
  const TeamRowStandingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5,
              ),
              color: ColorsManager.blue),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 0.40.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("teams", textAlign: TextAlign.center),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Ply"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Pts"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Win"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Drw"),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                width: 3,
                color: Colors.white,
              ),
              SizedBox(
                width: 0.10.sw,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Los"),
                ),
              ),
            ],
          )),
    );
  }
}
