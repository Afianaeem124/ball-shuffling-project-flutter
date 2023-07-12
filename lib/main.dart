import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ball Shufffle Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String ball = "assets/ball1.png";
  void chngimage() {
    int randomNumber = Random().nextInt(5) + 1;
    setState(() {
      ball = "assets/ball$randomNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff11f8ec),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Ask Me Anything...",
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            Image.asset(
              ball,
              height: 300,
              width: 300,
            ),
            ElevatedButton(
              onPressed: chngimage,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text(
                "Ask",
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
