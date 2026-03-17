import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/constants/app_strings.dart';

import 'package:travel_app/widgets/container_double.dart';
import 'package:travel_app/widgets/container_simple.dart';
// import 'package:travel_app/widgets/trip_overview.dart';
import 'package:travel_app/screens/daily_schedule.dart';

class ContentsTable extends StatelessWidget {
  const ContentsTable({super.key});

  @override
  Widget build(BuildContext context) {
    double containerHeight = 150;
    double gapSize = 20;

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => DailySchedule(),
                  ),
                );
              },
              child: ContainerSimple(
                title: AppStrings.kTripOverview,
                height: containerHeight,
                myColor: Colors.green,
                imageUrl: 'assets/images/beach_1.jpg',
              ),
            ),
            Gap(gapSize),
            ContainerDouble(
              leftFlex: 3,
              rightFlex: 7,
              title1: 'Flight',
              title2: 'Daily Schedule',
              height: containerHeight,
              imageUrl1: 'assets/images/beach_2.jpg',
              imageUrl2: 'assets/images/rice_field.jpg',
            ),
            Gap(gapSize),
            ContainerSimple(
              title: AppStrings.kHotelAddresses,
              height: containerHeight,
              imageUrl: 'assets/images/cabin_beach.jpg',
            ),
            Gap(gapSize),
            ContainerDouble(
              title1: 'Flight',
              title2: 'Daily Schedule',
              height: containerHeight,
              imageUrl1: 'assets/images/boat_beach.jpg',
              imageUrl2: 'assets/images/cellphone_beach.jpg',
            ),
            Gap(gapSize),
            ContainerSimple(
              title: AppStrings.kYourTravelAgent,
              myColor: Colors.pink,
              height: containerHeight,
              imageUrl: 'assets/images/travel_agent.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
