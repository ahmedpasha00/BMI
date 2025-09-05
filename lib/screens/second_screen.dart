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

  @override
  Widget build(BuildContext context) {
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
                      "Normal",
                      style: TextStyle(
                        color: Color(0xff21BF73),
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
                    "You Have a Normal Body Weight,\nGood Job.",
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
