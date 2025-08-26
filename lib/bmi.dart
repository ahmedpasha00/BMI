import 'package:earesoft_flutter/screens/second_screen.dart';
import 'package:earesoft_flutter/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFF1c2135),
        appBarTheme: AppBarTheme(
          elevation: 9,
          shadowColor: Colors.black54,
          centerTitle: true,
          toolbarHeight: 50,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          backgroundColor: Color(0xff24263B),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
