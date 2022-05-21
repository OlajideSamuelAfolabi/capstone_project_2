import 'package:flutter/material.dart';

class RepairServiceTile extends StatelessWidget {
  const RepairServiceTile({
    Key? key,
    required this.service,
    required this.setupType,
    required this.productIcon,
  }) : super(key: key);

  final String service;
  final String setupType;
  final IconData productIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD3D3D3),
        ),
        child: Icon(
          productIcon,
          size: 40,
          color: Colors.white,
        ),
      ),
      trailing: const Icon(
        Icons.chevron_right,
        size: 40,
      ),
      tileColor: const Color(0XFFEEEDF3),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      title: Text(
        service,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(setupType),
      ),
    );
  }
}
