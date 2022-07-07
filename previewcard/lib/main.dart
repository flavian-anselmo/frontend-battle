// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:previewcard/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ReusableCard(
            cardColor: Colors.orange,
            picture: "assets/icon-sedans.svg",
            btnTxt:Colors.orange,
            typeCar: "SEDANS",
          ),
          ReusableCard(
            cardColor:Color.fromARGB(255, 11, 150, 131), 
            picture: "assets/icon-suvs.svg",
            btnTxt: Color.fromARGB(255, 39, 240, 213),
            typeCar: "SUVS",
          ),
          ReusableCard(
            cardColor: Color.fromARGB(255, 5, 61, 68),
            picture: "assets/icon-luxury.svg",
            btnTxt: Color.fromARGB(255, 5, 61, 68), 
            typeCar: "LUXURY",
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.cardColor,
    required this.picture,
    required this.btnTxt,
    required this.typeCar,
  }) : super(key: key);
  final cardColor;
  final picture;
  final btnTxt;
  final typeCar;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(picture),
            Text(typeCar, style: txtHeading),
            const Text(sedansTxt, style: TextStyle(color: Colors.white)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Learn More",
                style: TextStyle(color: btnTxt),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
