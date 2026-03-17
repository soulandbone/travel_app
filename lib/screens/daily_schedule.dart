import 'package:flutter/material.dart';
import 'package:travel_app/widgets/daily_schedule_info.dart';

class DailySchedule extends StatelessWidget {
  const DailySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daily Schedule'),),
       body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                // scheduleList.map((singleSchedule)) => DailyScheduleContainer(schedule:singleSchedule)).toList(),
                // DailyScheduleContainer(dayTime: 'Morning', time1: '08:00 AM', time2: '09:30 AM', activity1: 'Breakfast', activity2: 'Beach',),
                DailyScheduleInfo()
              ]
            ),
          )
        ],
      ) 
      );
  }
}