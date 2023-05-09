import 'package:demo/food.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/food.jpg',
      nextScreen: Food(),
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
