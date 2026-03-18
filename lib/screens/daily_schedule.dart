import 'package:flutter/material.dart';
import 'package:travel_app/widgets/itinerary_black.dart';
import 'package:travel_app/widgets/itinerary_white.dart';

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
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Column(
              children: [
                ItineraryBlack()
              ]
            ),
          )
        ],
      ) 
      );
  }
}