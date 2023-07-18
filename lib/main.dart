import 'package:flutter/material.dart';
import 'my_custom_appbar.dart';

main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextStyle _bodytextstyle =
      const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  var pricebuttonpapdding = MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 50, vertical: 25));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: ListView(
        children: [
          Column(
            children: [
              MediaQuery.of(context).size.width > 720
                  ? const MyCustomAppBar()
                  : Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 60),
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Design Buddy',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.menu),
                            )
                          ])),
              const SizedBox(
                height: 40,
              ),
              MediaQuery.of(context).size.width > 400
                  ? UnlimitedText(bodytextstyle: _bodytextstyle)
                  : Text("Unlimited Design",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              MediaQuery.of(context).size.width > 400
                  ? SubscriptionText(bodytextstyle: _bodytextstyle)
                  : Text("Subscription Service",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              MediaQuery.of(context).size.width > 400
                  ? DesignMadeEasyText(size: 16)
                  : DesignMadeEasyText(size: 12),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onHover: (value) {
                  if (value) {
                    setState(() {
                      pricebuttonpapdding = MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 30));
                    });
                  } else {
                    setState(() {
                      pricebuttonpapdding = MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 25));
                    });
                  }
                },
                style: ButtonStyle(
                    padding: pricebuttonpapdding,
                    overlayColor: MaterialStateProperty.all(
                        Colors.black.withOpacity(0.8)),
                    backgroundColor: MaterialStateProperty.all(
                        Colors.black.withOpacity(0.7)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)))),
                onPressed: () {},
                child: const Text('View Pricing',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
              ),
              const SizedBox(
                height: 40,
              ),
              MediaQuery.of(context).size.width > 400
                  ? ImageBox(
                      bodytextstyle: _bodytextstyle,
                      borderSize: 100,
                      paddingSize: 30,
                      textSize: 40,
                    )
                  : ImageBox(
                      bodytextstyle: _bodytextstyle,
                      borderSize: 50,
                      paddingSize: 15,
                      textSize: 20,
                    ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}

class ImageBox extends StatelessWidget {
  final double paddingSize;
  final double textSize;
  final double borderSize;

  const ImageBox({
    super.key,
    required TextStyle bodytextstyle,
    required this.paddingSize,
    required this.textSize,
    required this.borderSize,
  }) : _bodytextstyle = bodytextstyle;

  final TextStyle _bodytextstyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingSize),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(borderSize)),
      child: Column(
        children: [
          MediaQuery.of(context).size.width > 400
              ? Text('Our Services', style: _bodytextstyle)
              : Text("Our Service",
                  style: TextStyle(
                      fontSize: textSize, fontWeight: FontWeight.bold)),
          Image.asset(
            'images/services.png',
            width: MediaQuery.of(context).size.width * 0.5,
          ),
        ],
      ),
    );
  }
}

class DesignMadeEasyText extends StatelessWidget {
  final double size;
  const DesignMadeEasyText({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Text(
        'A design-made-easy monthly subscription solutionm tailored around your business needs. No fuss, no hassle, no messy contracts, just straight forward best-in-class design at a click of a button.',
        overflow: TextOverflow.visible,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: size),
      ),
    );
  }
}

class SubscriptionText extends StatelessWidget {
  const SubscriptionText({
    super.key,
    required TextStyle bodytextstyle,
  }) : _bodytextstyle = bodytextstyle;

  final TextStyle _bodytextstyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Subscription Service',
      style: _bodytextstyle,
    );
  }
}

class UnlimitedText extends StatelessWidget {
  const UnlimitedText({
    super.key,
    required TextStyle bodytextstyle,
  }) : _bodytextstyle = bodytextstyle;

  final TextStyle _bodytextstyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Unlimited Design',
      style: _bodytextstyle,
    );
  }
}
