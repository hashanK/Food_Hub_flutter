import 'package:flutter/material.dart';
import 'package:food_hub/screens/forgot_password_screen.dart';
import 'package:food_hub/screens/login_screen.dart';
import 'package:food_hub/screens/main_screen.dart';
import 'package:food_hub/screens/onboarding.dart';
import 'package:food_hub/screens/onboarding_page.dart';
import 'package:food_hub/screens/signup_screen.dart';
import 'package:food_hub/screens/verification_screen.dart';

final Map<String, WidgetBuilder> routes = {
  Signup.routeName: (_) => const Signup(),
  LoginScreen.routeName: (_) => const LoginScreen(),
  Onboarding.routeName: (_) => const Onboarding(),
  VerificationScreen.routeName: (_) => const VerificationScreen(),
  ForgotPasswordScreen.routeName: (_) => const ForgotPasswordScreen(),
  MainScreen.routeName: (_) => const MainScreen(),
};
