import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class FixDetailPage extends StatelessWidget {
  const FixDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0XFFF3B29E),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              height: 300,
              child: Stack(
                children: [
                  Positioned(
                    left: 50,
                    bottom: 20,
                    child: Image.asset(
                      'assets/microwave_oven.png',
                      height: 250,
                      width: 250,
                    ),
                  ),
                  const Icon(
                    Icons.chevron_left_rounded,
                    size: 45,
                  ),
                  const Positioned(
                    top: 15,
                    right: 100,
                    child: Text(
                      'Fix Microwave',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    color: const Color(0XFFF3B29E),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Reviews',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(248, 231, 143, 89),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: const Color(0XFF1B1B1D),
                    child: Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(
                        Icons.sms_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: ServiceCard(
                service: 'Repair',
                price: '\$52',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: ServiceCard(
                service: 'Setup',
                price: '\$12',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: OrderRepairButton(),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: OrderSetupButton(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
