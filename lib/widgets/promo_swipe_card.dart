import 'package:flutter/material.dart';

class PromoSwipeCard extends StatelessWidget {
  const PromoSwipeCard({
    Key? key,
    required this.promoDurationText,
    required this.promoDescriptionText,
    required this.topColor,
    required this.bottomLevelColor,
    required this.imagePath,
  }) : super(key: key);

  final String promoDurationText;
  final String promoDescriptionText;
  final Color topColor;
  final Color bottomLevelColor;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          color: bottomLevelColor,
        ),
        height: 200,
        width: 220,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            Container(
              decoration: BoxDecoration(
                color: topColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              height: 50.0,
            ),
            Positioned(
              left: 20.0,
              top: 20,
              child: Text(
                promoDurationText,
                style: const TextStyle(
                  color: Color(0XFF1B1B1D),
                  fontWeight: FontWeight.w800,
                  fontSize: 15.0,
                ),
              ),
            ),
            Positioned(
              left: 20.0,
              top: 70,
              child: Text(
                promoDescriptionText,
                style: const TextStyle(
                  color: Color(0XFF1B1B1D),
                  fontWeight: FontWeight.w800,
                  fontSize: 18.0,
                ),
              ),
            ),
            Positioned(
              right: -15.0,
              bottom: -8.0,
              child: Image.asset(
                imagePath,
                height: 120,
                width: 100,
                isAntiAlias: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
