import 'package:flutter/material.dart';

class OrderRepairButton extends StatelessWidget {
  const OrderRepairButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      fillColor: const Color(0XFF1B1B1D),
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          'Order repair',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
