import 'package:flutter/material.dart';
import 'dart:math';
import 'package:smattered/app_screens/alertdialog_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              generateLuckyNumber(),
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15.0),
            FlightImageAsset(),
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

class FlightImageAsset extends StatelessWidget {
  const FlightImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage, width: 300.0);
    return Container(child: image);
  }
}
