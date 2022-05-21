import 'package:flutter/material.dart';

import '../constants.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key, required this.authType}) : super(key: key);
  final String authType;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 8.0,
      fillColor: kPrimaryColor,
      child: Text(
        authType,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      constraints: const BoxConstraints(minHeight: 50.0),
    );
  }
}
