import 'package:flutter/material.dart';

class ProductServiceTile extends StatelessWidget {
  const ProductServiceTile({
    Key? key,
    required this.applianceIcon,
    required this.serviceType,
    required this.setupType,
    required this.price,
  }) : super(key: key);

  final IconData applianceIcon;
  final String serviceType;
  final String setupType;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0XFFEEEDF3),
      margin: const EdgeInsets.all(0.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              top: 10,
              bottom: 10,
              right: 15,
            ),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0XFFD3D3D3),
              ),
              child: Icon(
                applianceIcon,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                serviceType,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                setupType,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Text(
            price,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0, left: 10),
            child: Icon(
              Icons.chevron_right_rounded,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
