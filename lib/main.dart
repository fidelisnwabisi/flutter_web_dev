import 'package:flutter/material.dart';

import 'my_custom_appbar.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()), // use MaterialApp
  );
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
          MediaQuery.of(context).size.width > 720
              ? MyCustomAppBar()
              : Container(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Design Buddy",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                      )
                    ],
                  ),
                ),
          SizedBox(height: 40),
          Text("Unlimited Designs"),
          Text("Subscription Service"),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
