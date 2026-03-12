import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/constants/app_styles.dart';

class ContainerDouble extends StatelessWidget {
  const ContainerDouble({
    required this.title1,
    required this.title2,
    this.myColor,
    required this.height,
    this.margin,
    required this.imageUrl1,
    required this.imageUrl2,
    this.leftFlex,
    this.rightFlex,
    super.key,
  });

  final String title1;
  final String title2;
  final Color? myColor;
  final double height;
  final double? margin;
  final String imageUrl1;
  final String imageUrl2;
  final int? leftFlex;
  final int? rightFlex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin ?? 5),
      width: double.infinity,
      height: height,
      color: myColor ?? const Color.fromARGB(0, 33, 149, 243),
      child: Row(
        children: [
          Expanded(
            flex: leftFlex ?? 7,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl1),
                ),
              ),
              child: Text(
                title1,
                style: AppStyles.titleContents,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Gap(20),
          Expanded(
            flex: rightFlex ?? 3,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl2),
                ),
              ),
              child: Text(
                title2,
                style: AppStyles.titleContents,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
