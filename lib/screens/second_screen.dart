import 'package:earesoft_flutter/bmi.dart';
import 'package:earesoft_flutter/screens/first_screens.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final double Height;
  final int weight;

  SecondScreen({super.key, required this.Height, required this.weight});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late double bmi; // تعريف متغير bmi

  @override
  void initState() {
    super.initState();
    // هنا يتحسب مرة واحدة لما الصفحة تفتح
    double heightInMeter = widget.Height / 100;
    bmi = widget.weight / (heightInMeter * heightInMeter);
  }

  dd bmiText(double value) {
    if (value < 18.5) {
      return dd(
        Colors: Colors.greenAccent,
        discripshon: "You are underweight. Try to eat healthy meals.",
        text: "Underweight",
      );
    } else if (value >= 18.5 && value <= 24.9) {
      return dd(
        Colors: const Color.fromARGB(255, 19, 82, 21),
        discripshon: "You have a normal body weight. Good job!",
        text: "Normal",
      );
    } else if (value >= 25 && value <= 29.9) {
      return dd(
        Colors: Colors.orange,
        discripshon: "You are overweight. Exercise regularly.",
        text: "Overweight",
      );
    } else {
      return dd(
        Colors: Colors.red,
        discripshon: "You are obese. Consider a healthy lifestyle plan.",
        text: "Obese",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = bmiText(bmi);
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator")),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 22, top: 25),
              child: Text(
                "Your Result",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(58.0),
                    child: Text(
                      result.text,
                      style: TextStyle(
                        color: result.Colors,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    result.discripshon,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff8B8C9E),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => FirstScreens()),
          );
        },

        child: Container(
          height: 100,
          width: double.infinity, // خليها تاخد عرض الشاشة كله
          color: Colors.pink,
          child: Center(
            child: Text(
              "Re _ Calculate",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class dd {
  Color Colors;
  String discripshon;
  String text;

  dd({required this.Colors, required this.discripshon, required this.text});
}
