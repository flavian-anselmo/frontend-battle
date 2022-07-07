import 'package:charts_flutter/flutter.dart' as charts;
import 'package:expensechart/model.dart';
import 'package:flutter/material.dart';

class CustomRoundedBars extends StatelessWidget {
  const CustomRoundedBars({
    Key? key,
    required this.seriesLst,
  }) : super(key: key);

  final List<charts.Series<dynamic, String>> seriesLst;
  factory CustomRoundedBars.withSampleData() {
    return CustomRoundedBars(
      seriesLst: CreateData.createSampleData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: charts.BarChart(
        animate: true,
        seriesLst,
        
      ),
    );
  }
}

class CreateData {
  static List<charts.Series<BarChartData, String>> createSampleData() {
    final barData = [
      BarChartData(day: "mon", amount: 17.45),
      BarChartData(day: "Tue", amount: 34.91),
      BarChartData(day: "Wed", amount: 52.36),
      BarChartData(day: "Thu", amount: 31.07),
      BarChartData(day: "Fri", amount: 23.39),
      BarChartData(day: "sat", amount: 43.28),
      BarChartData(day: "sun", amount: 25.48),
    ];

    return [
      charts.Series<BarChartData, String>(
        id: "",
        data: barData,
        colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
        domainFn: (BarChartData b, _) => b.day,
        measureFn: (BarChartData b, _) => b.amount,
      )
    ];
  }
}
