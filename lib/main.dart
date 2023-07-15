import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(40)),
          )
        ],
      ),
    );
  }
}
