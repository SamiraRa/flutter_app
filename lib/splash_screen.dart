import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gaming_streaming/UI/ac_series_list.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        animationDuration: const Duration(seconds: 3),
        splashIconSize: 300,
        splash: Expanded(
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/playstation.png',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: Text(
                  "Find your best Entertainment",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 9, 33, 53),
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: SpinKitSpinningLines(
                  color: Color.fromARGB(255, 9, 33, 53),
                  // color: Color.fromARGB(255, 9, 33, 53),
                ),
              )
            ],
          ),
        ),

        // pageTransitionType: PageTransitionType.scale,
        nextScreen: const GamesListScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 1000,
      ),
    );
  }
}
