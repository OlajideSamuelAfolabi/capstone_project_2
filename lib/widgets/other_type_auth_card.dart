import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtherAuthTypeCard extends StatelessWidget {
  const OtherAuthTypeCard({Key? key, required this.logoPath}) : super(key: key);
  final String logoPath;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SvgPicture.asset(
          logoPath,
          height: 30.0,
          width: 30.0,
        ),
      ),
    );
  }
}
