import 'package:flutter/material.dart';
import 'package:smattered/app_screens/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('My Flutter App')),
        body: FirstScreen(),
      ),
    );
  }
}
