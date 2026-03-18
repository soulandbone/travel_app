import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class ItineraryContainer extends StatelessWidget {

  final String time;
  final String activity;
  final TextStyle style;

  const ItineraryContainer({super.key, required this.time, required this.activity, required this.style});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(width: size.width*0.18, child: Text(time, style: style)),
            Gap(30),
            Expanded(child: Text(activity, style: style)),
            ],
          );
  }
}