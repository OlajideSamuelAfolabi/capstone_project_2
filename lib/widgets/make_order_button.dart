import 'package:flutter/material.dart';

class MakeOrderButton extends StatelessWidget {
  const MakeOrderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      fillColor: const Color(0XFF1B1B1D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          top: 15.0,
          bottom: 15.0,
        ),
        child: Text(
          'Make an order',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
