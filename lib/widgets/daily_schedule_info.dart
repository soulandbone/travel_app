import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/constants/app_colors.dart';
import 'package:travel_app/widgets/text_daily_daytime.dart';
import 'package:travel_app/widgets/text_daily_schedule.dart';

class DailyScheduleInfo extends StatelessWidget {
  const DailyScheduleInfo({super.key});

    @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height*0.45,
      child: Container(
        decoration: BoxDecoration(color: AppColors.bgGreen,),
        child: Column(
          children: [
            // morning schedule
            Container(
              padding: EdgeInsets.only(left:30, top:15),
              child: 
              Column(
                children: [
                  Row(
                    children: [
                      TextDailyDaytime(text: 'MORNING'),
                    ],
                  ),
                  Gap(15),
                  Row(
                    children: [
                      Column(
                        children: [
                          TextDailySchedule(text: '08:00 AM'),
                          TextDailySchedule(text: '09:30 AM'),
                            ],
                          ),
                      Gap(30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextDailySchedule(text: 'BREAKFAST'),
                          TextDailySchedule(text: 'BEACH'),
                            ],
                          ),
                    ],
                  ),
                ],
              )
            ),
            // afternoon schedule
            Container(
              padding: EdgeInsets.only(left:30, top:15),
              child: 
              Column(
                children: [
                  Row(
                    children: [
                      TextDailyDaytime(text: 'AFTERNOON'),
                    ],
                  ),
                  Gap(15),
                  // width: size.width*0.25,
                  Row(
                    children: [
                      Column(
                        children: [
                          TextDailySchedule(text: '01:30 PM'),
                          TextDailySchedule(text: '04:00 PM'),
                            ],
                          ),
                      Gap(30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextDailySchedule(text: 'LUNCH'),
                          TextDailySchedule(text: 'SNORKELING'),
                            ],
                          ),
                    ],
                  ),
                ],
              )
            ),
            // evening schedule
            Container(
              padding: EdgeInsets.only(left:30, top:15),
              child: 
              Column(
                children: [
                  Row(
                    children: [
                      TextDailyDaytime(text: 'EVENING'),
                    ],
                  ),
                  Gap(15),
                  // width: size.width*0.25,
                  Row(
                    children: [
                      Column(
                        children: [
                          TextDailySchedule(text: '08:00 PM'),
                          TextDailySchedule(text: '09:30 PM'),
                            ],
                          ),
                      Gap(30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextDailySchedule(text: 'DINNER'),
                          TextDailySchedule(text: 'DRINKS'),
                            ],
                          ),
                    ],
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}