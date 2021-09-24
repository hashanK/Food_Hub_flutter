import 'package:flutter/material.dart';
import 'package:food_hub/screens/login_screen.dart';
import 'package:food_hub/screens/onboarding.dart';
import 'package:food_hub/screens/onboarding_page.dart';
import 'package:food_hub/screens/signup_screen.dart';

final Map<String, WidgetBuilder> routes = {
  Signup.routeName: (_) => const Signup(),
  LoginScreen.routeName: (_) => const LoginScreen(),
  //OnboardingPage.routeName: (_) => const OnboardingPage(),
  Onboarding.routeName: (_) => const Onboarding(),
};
