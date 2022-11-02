import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 1500,
              radius: 100,
              lineWidth: 20,
              progressColor: Colors.deepPurple,
              percent: 0.75,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.white,
              center: Text(
                '75%',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0, right: 10, left: 10),
              child: LinearPercentIndicator(
                animation: true,
                animationDuration: 1500,
                lineHeight: 28,
                percent: 0.75,
                progressColor: Colors.deepPurple,
                backgroundColor: Colors.white,
                barRadius: Radius.circular(25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
