import 'package:flutter/material.dart';
import 'dart:math';

import 'package:smattered/app_screens/alertdialog_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          children: [
            Text(
              generateLuckyNumber(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Below this text should be an Airplane image',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.0),
            FlightBookButton(),
          ],
        ),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(10);
    return 'Your lucky number is $luckyNumber';
  }
}
