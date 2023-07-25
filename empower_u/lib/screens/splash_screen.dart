import 'package:empower_u/helper/contants.dart';
import 'package:empower_u/screens/selectRole.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color.fromRGBO(251, 238, 230, 1),
      centered: true,
      splash: logo,
      splashIconSize: 400,
      nextScreen: const SelectRole(),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}
