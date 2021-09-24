import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_hub/constant.dart';
import 'package:food_hub/custom_widgets/social_button_widget.dart';
import 'package:food_hub/screens/login_screen.dart';
import 'package:food_hub/screens/signup_screen.dart';
import 'package:hexcolor/hexcolor.dart';

import 'onboarding.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/onboard_bg_image.png"),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: size.width * 0.15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              child: const Text('Skip'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: buttonBGcolor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  elevation: 1),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(Onboarding.routeName);
                                //print(size.width);
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.15,
                        ),
                        const Text(
                          'Welcome to',
                          style: TextStyle(fontSize: 53),
                        ),
                        Text(
                          'Food Hub',
                          style: TextStyle(fontSize: 50, color: buttonBGcolor),
                        ),
                        SizedBox(
                          width: size.width * 0.6,
                          child: Text(
                            'Your favourite foods delivered fast at your door.',
                            style: TextStyle(
                              fontSize: 18,
                              color: HexColor("#30384F"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.18,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    width: 50,
                                    height: 1,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "or signup with",
                                  style: TextStyle(
                                    color: Colors.white,
                                    // shadows: [
                                    //   Shadow(
                                    //     offset: Offset(0.0, 0.0),
                                    //     blurRadius: 7.0,
                                    //     color: Color.fromARGB(200, 0, 0, 0),
                                    //   ),
                                    // ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    width: 50,
                                    height: 1,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SocialButton(
                                  imagePath: "assets/images/facebook.png",
                                  text: "FACEBOOK",
                                ),
                                SocialButton(
                                  imagePath: "assets/images/google.png",
                                  text: "GOOGLE",
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(Signup.routeName);
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: Colors.white, width: 2.0)),
                                child: const Center(
                                  child: Text(
                                    'Start with email or phone',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Already have an account?',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(LoginScreen.routeName);
                                  },
                                  child: const Text(
                                    'Sign In',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
