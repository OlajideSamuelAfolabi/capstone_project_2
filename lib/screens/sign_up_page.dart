import 'package:capstone_project_2/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(
                    Icons.settings,
                    size: 80,
                    color: kPrimaryColor,
                  ),
                  const SizedBox(height: 12.0),
                  const Center(
                    child: Text(
                      'REPAIR HOME',
                      style: TextStyle(
                        fontSize: 25,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Login to your account',
                      style: TextStyle(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Card(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        contentPadding: EdgeInsets.only(left: 15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            borderSide: BorderSide.none),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Card(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding: EdgeInsets.only(left: 15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            borderSide: BorderSide.none),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Card(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm password',
                        contentPadding: EdgeInsets.only(left: 15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            borderSide: BorderSide.none),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const AuthButton(authType: 'Sign up'),
                  const SizedBox(height: 30.0),
                  const Text(
                    '⚫\t Or sign in with \t ⚫',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      OtherAuthTypeCard(logoPath: 'assets/logos/google.svg'),
                      OtherAuthTypeCard(logoPath: 'assets/logos/facebook.svg'),
                      OtherAuthTypeCard(logoPath: 'assets/logos/twitter.svg'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
