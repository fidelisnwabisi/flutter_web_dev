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
    TextStyle _bodyTextStyle =
        TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
    var priceButtonPadding = MaterialStateProperty.all(
        EdgeInsets.symmetric(horizontal: 50, vertical: 25));
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
          Center(child: Text("Unlimited Designs", style: _bodyTextStyle)),
          Center(child: Text("Subscription Service", style: _bodyTextStyle)),
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Text(
              "A design-made-easy monthly subscription solution tailored around your busines needs. No fuss, no hassle, no messy contracts, just straight forward best-in-class design at a click of a button",
              overflow: TextOverflow.visible,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
                padding: priceButtonPadding,
                overlayColor:
                    MaterialStateProperty.all(Colors.black.withOpacity(0.8)),
                backgroundColor:
                    MaterialStateProperty.all(Colors.black.withOpacity(0.7)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)))),
            onPressed: () {},
            child: Text(
              "View Pricing",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
