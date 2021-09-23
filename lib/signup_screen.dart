import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';
import 'custom_widgets/custom_button_widget.dart';
import 'custom_widgets/custom_textfield_widget.dart';
import 'custom_widgets/social_button_widget.dart';

class Signup extends StatelessWidget {
  static const routeName = "/signup";
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: mainBGHexColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: size.height,
            child: Stack(
              children: [
                Positioned(
                  top: -70,
                  right: -70,
                  child: Image.asset(
                    "assets/images/bgRedEcllipse.png",
                    width: 150,
                    height: 150,
                  ),
                ),
                Positioned(
                  top: -30,
                  left: -50,
                  child: Image.asset(
                    "assets/images/bgDougnutEcllipse.png",
                    width: 96,
                    height: 96,
                  ),
                ),
                Positioned(
                  top: -90,
                  left: -8,
                  child: Image.asset(
                    "assets/images/bgWhiteEcllipse.png",
                    width: 140,
                    height: 140,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(23.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      const SizedBox(height: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Full name",
                            style: TextStyle(color: labelTextColor),
                          ),
                          const SizedBox(height: 10),
                          CustomTextField(
                            placeholderText: "Your full name",
                            isSecureText: false,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "E-mail",
                            style: TextStyle(color: labelTextColor),
                          ),
                          const SizedBox(height: 10),
                          CustomTextField(
                            placeholderText: "Your email or phone",
                            isSecureText: false,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(color: labelTextColor),
                          ),
                          const SizedBox(height: 10),
                          CustomTextField(
                            placeholderText: "Password",
                            trailingIcon: Icon(Icons.remove_red_eye,
                                color: labelTextColor),
                            isSecureText: true,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: labelTextColor),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                              bgColor: buttonBGcolor,
                              btnText: "SIGN UP",
                              btnTextColor: Colors.white,
                              cornerRadius: 25),
                        ],
                      ),
                      const SizedBox(height: 70),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 50,
                              height: 1,
                              decoration: BoxDecoration(
                                  color: labelTextColor.withOpacity(0.5)),
                            ),
                          ),
                          Text(
                            "or signup with",
                            style: TextStyle(color: labelTextColor),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              width: 50,
                              height: 1,
                              decoration: BoxDecoration(
                                  color: labelTextColor.withOpacity(0.5)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
