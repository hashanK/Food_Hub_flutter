import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';
import 'package:food_hub/signup_screen.dart';
import 'custom_widgets/custom_button_widget.dart';
import 'custom_widgets/custom_textfield_widget.dart';
import 'custom_widgets/social_button_widget.dart';
import 'package:food_hub/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: mainBGHexColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                  top: -70,
                  right: -70,
                  child: Image.asset(
                    "assets/images/bgRedEcllipse.png",
                    width: 150,
                    height: 150,
                  )),
              Positioned(
                  top: -30,
                  left: -50,
                  child: Image.asset(
                    "assets/images/bgDougnutEcllipse.png",
                    width: 96,
                    height: 96,
                  )),
              Positioned(
                  top: -90,
                  left: -8,
                  child: Image.asset(
                    "assets/images/bgWhiteEcllipse.png",
                    width: 140,
                    height: 140,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(height: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E-mail",
                          style: TextStyle(color: labelTextColor),
                        ),
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
                        Text("Password",
                            style: TextStyle(color: labelTextColor)),
                        CustomTextField(
                          placeholderText: "Password",
                          trailingIcon:
                              Icon(Icons.remove_red_eye, color: labelTextColor),
                          isSecureText: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot Password?",
                              style: TextStyle(color: labelTextColor),
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
                            btnText: "LOGIN",
                            btnTextColor: Colors.white,
                            cornerRadius: 25),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: labelTextColor),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(Signup.routeName);
                              //print("tap");
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: buttonBGcolor),
                            ))
                      ],
                    ),
                    const SizedBox(height: 40),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
