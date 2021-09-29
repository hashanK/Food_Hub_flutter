import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';
import 'package:food_hub/custom_widgets/custom_button_widget.dart';
import 'package:food_hub/custom_widgets/custom_textfield_widget.dart';
import '../custom_widgets/back_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = "/forgot_password";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
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
                const Positioned(
                  top: 60,
                  left: 20,
                  child: CustomBackButton(),
                ),
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
                  padding: const EdgeInsets.fromLTRB(23.0, 170.0, 23.0, 23.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Please enter your email address to request a password reset',
                            style: TextStyle(
                              fontSize: 15,
                              color: labelTextColor,
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          CustomTextField(
                            placeholderText: "example@mail.com",
                            isSecureText: true,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: CustomButton(
                                  bgColor: buttonBGcolor,
                                  btnText: "SEND NEW PASSWORD",
                                  btnTextColor: Colors.white,
                                  cornerRadius: 25,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
