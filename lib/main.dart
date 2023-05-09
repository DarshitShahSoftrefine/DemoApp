import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:demo/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Besley'),
        home: AnimatedSplashScreen(
          duration: 3000,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.white,
          animationDuration: Duration(seconds: 3),
          splashIconSize: 300,
          splash: Center(
            child: Image.network(
              'https://www.daysoftheyear.com/wp-content/uploads/national-fast-food-day.jpg',
              height: 500,
              width: 500,
            ),
          ),
          nextScreen: Food(),
        ));
  }
}
