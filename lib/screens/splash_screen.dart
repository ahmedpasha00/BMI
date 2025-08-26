import 'package:earesoft_flutter/screens/first_screens.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FirstScreens()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Lottie.asset(
                "assets/lottie/lsnCJOvVgt.json",
                width: 350,
                repeat: true,
              ),
            ),
            Positioned(
              bottom: 500,

              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "BMI Calculator",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
