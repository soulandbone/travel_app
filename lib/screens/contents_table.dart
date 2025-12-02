import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/constants/app_strings.dart';
import 'package:travel_app/constants/app_styles.dart';

class ContentsTable extends StatelessWidget {
  const ContentsTable({super.key});

  @override
  Widget build(BuildContext context) {
    double containerHeight = 150;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ContainerSimple(
            title: AppStrings.kTripOverview,
            height: containerHeight,
            myColor: Colors.green,
            imageUrl: 'assets/images/beach_1.jpg',
          ),
          Gap(20),
          ContainerSimple(
            title: AppStrings.kHotelAddresses,
            height: containerHeight,
            imageUrl: 'assets/images/beach_2.jpg',
          ),
          Gap(20),
          ContainerSimple(
            title: AppStrings.kYourTravelAgent,
            myColor: Colors.pink,
            height: containerHeight,
            imageUrl: 'assets/images/beach_1.jpg',
          ),
        ],
      ),
    );
  }
}

class ContainerSimple extends StatelessWidget {
  const ContainerSimple({
    required this.title,
    this.myColor,
    required this.height,
    this.margin,
    required this.imageUrl,
    super.key,
  });

  final String title;
  final Color? myColor;
  final double height;
  final double? margin;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin ?? 5),
      alignment: Alignment.center,
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: myColor ?? Colors.blue,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imageUrl)),
      ),
      child: Text(title, style: AppStyles.titleContents),
    );
  }
}



class ContainerDouble extends StatelessWidget {
 
  });

  final String title1;
  final String title2;


  @override
  Widget build(BuildContext context) {
//ROW
    );
  }
}