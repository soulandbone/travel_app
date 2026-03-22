import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/constants/app_styles.dart';
import 'package:travel_app/widgets/itinerary_container.dart';


class Itinerary extends StatelessWidget {

  final Color textColor;


  const Itinerary({super.key, required this.textColor});


  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical:15, horizontal:25),
      height: size.height*0.45,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // morning schedule
            Text('MORNING', style: AppStyles.dayTime.copyWith(color: textColor)),
            Gap(10),
            ItineraryContainer(time: "8:00 AM", activity: "BREAKFAST IN HOTEL", style: AppStyles.itineraryInfo.copyWith(color: textColor)),
            Gap(5),
            ItineraryContainer(time: "9:30 AM", activity: "START DAYTRIP ISLAND HOPPING", style: AppStyles.itineraryInfo.copyWith(color: textColor)),
            Gap(20),
            Text('AFTERNOON', style: AppStyles.dayTime.copyWith(color: textColor)),
            Gap(10),
            ItineraryContainer(time: "1:30 PM", activity: "LUNCH AT BEACH", style: AppStyles.itineraryInfo.copyWith(color: textColor)),
            Gap(5),
            ItineraryContainer(time: "2:00 PM", activity: "TIME FOR SNORKELING OR KAYAKKING", style: AppStyles.itineraryInfo.copyWith(color: textColor)),
            Gap(5),
            ItineraryContainer(time: "5:00 PM", activity: "BACK TO HOTEL", style: AppStyles.itineraryInfo.copyWith(color: textColor)),
            Gap(20),
            Text('EVENING', style: AppStyles.dayTime.copyWith(color: textColor)),
            Gap(10),
            ItineraryContainer(time: "6:00 PM", activity: "MEETING FOR DRINKS", style: AppStyles.itineraryInfo.copyWith(color: textColor)),
            Gap(5),
            ItineraryContainer(time: "8:00 PM", activity: "DINNER IN VILLAGE", style: AppStyles.itineraryInfo.copyWith(color: textColor)),
          ],
        ),
      ),
    );
  }
}