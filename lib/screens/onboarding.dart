import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/screens/onboarding_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constant.dart';

class Onboarding extends StatefulWidget {
  static const routeName = "/onboarding";
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  // ignore: unused_field
  int _currentPage = 0;
  // ignore: prefer_final_fields
  PageController _controller = PageController();

  final List<Widget> _pages = [
    const OnboardingPage(
      title: 'Browse your menu and order directly',
      description:
          'Our app can send you everywhere, even space. For only \$2.99 per month',
      image: 'assets/images/onboard_one_img.png',
    ),
    const OnboardingPage(
      title: 'Even to space with us! Together',
      description:
          'Our app can send you everywhere, even space. For only \$2.99 per month',
      image: 'assets/images/onboard_two_img.png',
    ),
    const OnboardingPage(
      title: 'Pickup delivery at your door',
      description:
          'Our app can send you everywhere, even space. For only \$2.99 per month',
      image: 'assets/images/onboard_three_img.png',
    ),
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  _animateToPage() {
    if (_currentPage == 1) {
      return MediaQuery.of(context).size.width * 2;
    } else if (_currentPage == 2) {
      return 2;
    } else {
      return MediaQuery.of(context).size.width;
    }
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: _onChanged,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
              ),
              SmoothPageIndicator(
                controller: _controller, // PageController
                count: _pages.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: buttonBGcolor,
                  dotHeight: 8.0,
                  dotWidth: 8.0,
                ),
                onDotClicked: (index) {},
              ),
              SizedBox(
                height: size.height * 0.26,
              ),
              SizedBox(
                width: 70,
                height: 70,
                child: FloatingActionButton(
                  backgroundColor: buttonBGcolor,
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                  onPressed: () {
                    // _controller.nextPage(
                    //   duration: const Duration(microseconds: 800),
                    //   curve: Curves.easeInOutQuint,
                    // );
                    _controller.animateTo(
                      _animateToPage(),
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}
