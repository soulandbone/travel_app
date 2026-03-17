import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// import 'package:travel_app/constants/app_styles.dart';
// import 'package:travel_app/constants/app_colors.dart';


class DailyScheduleContainer extends StatelessWidget {
  const DailyScheduleContainer({super.key, required this.dayTime, required this.time1, required this.time2, required this.activity1, required this.activity2,});

  final String dayTime;
  final String time1;
  final String time2;
  final String activity1;
  final String activity2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return    
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
                children: [
                  Row(
                    children: [
                        Text(dayTime),
                    ],
                  ),
                  Gap(15),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: size.width*0.20,
                        child: Column(
                            children: [
                            Text(time1),
                            Gap(5),
                            Text(time2)
                          ],
                                      
                        ),
                      ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(activity1),
                            Gap(5),
                            Text(activity2)
                          ],
                        ),
                    ],
                  )
                ],
              ),
      );
  }
}