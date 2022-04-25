import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Screens/onboarding/info_page.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Splash();
        } else {
          // Loading is done, return the app:
          return OnboardingScreen();
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Shimmer.fromColors(
            baseColor: Colors.green,
            highlightColor: Colors.grey.shade300,
            child: Image.asset(
              'assets/images/launch_image_750.png',
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .5,
            ),
          ),
        ),
      ),
    );
  }
}
