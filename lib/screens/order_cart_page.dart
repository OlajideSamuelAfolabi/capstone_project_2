import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class OrderCartPage extends StatelessWidget {
  const OrderCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Icon(
                      Icons.chevron_left_rounded,
                      size: 30,
                    ),
                  ),
                  Expanded(child: Container()),
                  const Padding(
                    padding: EdgeInsets.only(right: 40.0),
                    child: Text(
                      'Cart',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: const Color(0XFFCAE8F2),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    ProductServiceTile(
                      serviceType: 'Fix Microwave',
                      setupType: 'Kitchen',
                      applianceIcon: Icons.microwave,
                      price: '',
                    ),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.stop_circle,
                          color: Colors.red,
                        ),
                      ),
                      title: Text(
                        'Setup Microwave',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          '\$22',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.stop_circle,
                          color: Colors.red,
                        ),
                      ),
                      title: Text(
                        'Repair Microwave',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          '\$80',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const ProductServiceTile(
                serviceType: 'Fix Fridge',
                setupType: '2 Service',
                applianceIcon: Icons.view_stream_outlined,
                price: '\$70',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: ProductServiceTile(
                  serviceType: 'Fix Washer',
                  setupType: '1 Service',
                  applianceIcon: Icons.web_asset_rounded,
                  price: '\$135',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: ProductServiceTile(
                  serviceType: 'Fix Computer',
                  setupType: '1 Service',
                  applianceIcon: Icons.desktop_mac,
                  price: '\$30',
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Total price',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '\$302',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: MakeOrderButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
