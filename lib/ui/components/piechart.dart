import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../utilities/pallete.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(
        'Male',
        40,
        ColorConstant.kYellowColor,
      ),
      ChartData(
        'Female',
        60,
        ColorConstant.kPrimaryColor,
      ),
    ];

    return Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: SfCircularChart(
            series: <CircularSeries>[
              PieSeries<ChartData, String>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.category,
                yValueMapper: (ChartData data, _) => data.value,
                pointColorMapper: (ChartData data, _) => data.color,
              ),
            ],
            legend: Legend(
              isVisible: true,
              position: LegendPosition.bottom,
              borderWidth: 2,
            )),
      ),
    );
  }
}

class ChartData {
  final String category;
  final double value;
  final Color color;

  ChartData(this.category, this.value, this.color);
}
