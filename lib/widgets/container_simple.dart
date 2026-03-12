import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_styles.dart';

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
