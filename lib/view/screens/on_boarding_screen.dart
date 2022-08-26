import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/profile/custom_text.dart';
import 'package:demo_zmap/view/auth/login_view.dart';
import 'package:demo_zmap/view/widgets/custom_bottom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final  introdata = GetStorage();
  void _EndWelcomePage(context) {
    Navigator.pop(context);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => LoginView()));
    introdata.write("displayed" , true);
  }

  List<PageViewModel> getPass() {
    return [
      PageViewModel(
        image: Image.asset('assets/images/image1.png'),
        title: "Welcome to Zmap",
        body: 'The Map TO Plan Your Trip',
      ),
      PageViewModel(
        image: Image.asset('assets/images/image2.png'),
        title: 'Explore New Places',
        body: 'Many places to chose from ! ',
      ),
      PageViewModel(
        image: Image.asset('assets/images/image3.png'),
        title: 'customize your trip ♥',
        body: 'plan your trip the way you like ',
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showDoneButton: true,
        showSkipButton: true,
        showNextButton: true,
        next: CustomText(
          text: 'Next',
          color: primaryColor,
          alignment: Alignment.center,
        ),
        skip: CustomText(
          text: 'Skip',
          color: primaryColor,
          alignment: Alignment.center,
        ),
        done: CustomButtom(
          text: 'Finish',
          onPressd: () {
            _EndWelcomePage(context);
          },
        ),
        onDone: () {
          _EndWelcomePage(context);
        },
        onSkip: () {
          _EndWelcomePage(context);
        },
        pages: getPass(),
      ),
    );
  }
}

