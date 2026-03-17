import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_styles.dart';


class TextDailySchedule extends StatelessWidget {
  final String text;
  const TextDailySchedule({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: AppStyles.scheduleInfo,
       );
  }
}