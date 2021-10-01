import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';
import 'package:food_hub/screens/main_screen.dart';
import '../custom_widgets/custom_button_widget.dart';
import '../custom_widgets/custom_textfield_widget.dart';
import '../custom_widgets/social_button_widget.dart';

class Signup extends StatefulWidget {
  static const routeName = "/signup";
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: mainBGHexColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
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
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(23.0, 65.0, 23.0, 23.0),
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
                          ),
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
                            "Phone",
                            style: TextStyle(color: labelTextColor),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 2.0, 0, 4.0),
                                decoration: BoxDecoration(
                                  color: textFieldBGColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: CountryCodePicker(
                                  textStyle: TextStyle(color: labelTextColor),
                                  backgroundColor: buttonBGcolor,
                                  onChanged: print,
                                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                  initialSelection: 'IT',
                                  favorite: const ['+39', 'FR'],
                                  // optional. Shows only country name and flag
                                  showCountryOnly: false,
                                  // optional. Shows only country name and flag when popup is closed.
                                  showOnlyCountryWhenClosed: false,
                                  // optional. aligns the flag and the Text left
                                  alignLeft: false,
                                ),
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Expanded(
                                child: CustomTextField(
                                  placeholderText: "phone number",
                                  isSecureText: false,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                      const SizedBox(height: 10),
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
                        ],
                      ),
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(MainScreen.routeName);
                            },
                            child: CustomButton(
                              bgColor: buttonBGcolor,
                              btnText: "SIGN UP",
                              btnTextColor: Colors.white,
                              cornerRadius: 25,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: SocialButton(
                              imagePath: "assets/images/facebook.png",
                              text: "FACEBOOK",
                            ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
