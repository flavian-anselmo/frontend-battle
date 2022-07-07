import 'package:expensechart/bar.dart';
import 'package:flutter/material.dart';

class BAR extends StatefulWidget {
  const BAR({Key? key}) : super(key: key);

  @override
  State<BAR> createState() => _BARState();
}

class _BARState extends State<BAR> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: SizedBox(
        height: 400,
        child: Card(
          child: CustomRoundedBars(
            seriesLst: CreateData.createSampleData(),
          ),
        ),
      ),
    );
  }
}
