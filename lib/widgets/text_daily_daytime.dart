import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_styles.dart';


class TextDailyDaytime extends StatelessWidget {
  final String text;
  const TextDailyDaytime({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: AppStyles.dayTime,
       );
  }
}