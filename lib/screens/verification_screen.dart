import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';
import 'package:food_hub/custom_widgets/custom_button_widget.dart';
import 'package:food_hub/custom_widgets/input_code_textfield.dart';
import '../custom_widgets/back_button.dart';

class VerificationScreen extends StatefulWidget {
  static const routeName = "/verification";
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
                            "Verification Code",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Please type the verification code sent to hashankannangara@gmail.com',
                            style: TextStyle(
                              fontSize: 15,
                              color: labelTextColor,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: size.width * 0.2,
                                child: InputCodeTextField(
                                  isSecureText: false,
                                  fontsize: 27.0,
                                  leftContentPadding: 25.0,
                                  isLastTF: false,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.2,
                                child: InputCodeTextField(
                                  isSecureText: false,
                                  fontsize: 27.0,
                                  leftContentPadding: 25.0,
                                  isLastTF: false,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.2,
                                child: InputCodeTextField(
                                  isSecureText: false,
                                  fontsize: 27.0,
                                  leftContentPadding: 25.0,
                                  isLastTF: false,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.2,
                                child: InputCodeTextField(
                                  isSecureText: false,
                                  fontsize: 27.0,
                                  leftContentPadding: 25.0,
                                  isLastTF: true,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'I don’t recevie a code!',
                                    style: TextStyle(
                                        fontSize: 15.0, color: labelTextColor),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'Please resend',
                                    style: TextStyle(
                                        fontSize: 15.0, color: buttonBGcolor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40.0,
                              ),
                              CustomButton(
                                bgColor: buttonBGcolor,
                                btnText: "Verify",
                                btnTextColor: Colors.white,
                                cornerRadius: 25,
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
