import 'package:flutter/material.dart';

class OrderSetupButton extends StatelessWidget {
  const OrderSetupButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      fillColor: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Order setup',
          style: TextStyle(
            color: Color(0XFF1B1B1D),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
