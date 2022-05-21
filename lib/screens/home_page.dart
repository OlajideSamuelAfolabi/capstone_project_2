import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 245, 244),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.segment,
                          size: 30,
                        ),
                      ),
                      Expanded(child: Container()),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Whats broken ?',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: SearchBox(),
                  ),
                  const SizedBox(height: 10.0),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Offers',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: PromoSwipeCard(
                            promoDurationText: 'Valid until June 30th',
                            promoDescriptionText:
                                'Take back 5%\nfor each\nrepair',
                            topColor: Color(0XFFD6E3FF),
                            bottomLevelColor: Color(0XFFEEEDF3),
                            imagePath: 'assets/lady_holding_mobile_phone.png',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: PromoSwipeCard(
                            promoDurationText: 'Valid until July 20th',
                            promoDescriptionText:
                                'Sales on\nappliances\nrepair',
                            topColor: Color(0XFFD3D3D3),
                            bottomLevelColor: Color(0XFFEEEDF3),
                            imagePath: 'assets/home_appliances.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'We can fix it',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      top: 5.0,
                      bottom: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Chip(
                          label: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Offers',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          backgroundColor: Color(0XFF1B1B1D),
                        ),
                        Text(
                          'Kitchen',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Livingroom',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Bathroom',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: RepairServiceTile(
                      service: 'Fix Microwave',
                      setupType: 'Kitchen',
                      productIcon: Icons.microwave,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: RepairServiceTile(
                      service: 'Fix TV set',
                      setupType: 'Livingroom',
                      productIcon: Icons.tv,
                    ),
                  ),
                  // Expanded(child: Container()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
