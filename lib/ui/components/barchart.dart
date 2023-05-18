import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChart extends StatelessWidget {
  const BarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AgeData> ageData = [
      AgeData('0-10', 25, Colors.red),
      AgeData('11-20', 50, Colors.blue),
      AgeData('21-30', 75, Colors.green),
      AgeData('31-40', 65, Colors.orange),
      AgeData('41-50', 40, Colors.purple),
      AgeData('51+', 20, Colors.yellow),
    ];
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        minorGridLines:
            const MinorGridLines(width: 0, color: Colors.transparent),
        minorTickLines:
            const MinorTickLines(width: 0, color: Colors.transparent),
        majorGridLines: const MajorGridLines(
            width: 0,
            color: Colors
                .transparent), // Mengatur lebar garis grid menjadi 0 untuk sumbu-x
        majorTickLines: const MajorTickLines(
            width: 0,
            color: Colors
                .transparent), // Mengatur lebar garis tepi menjadi 0 untuk sumbu-x
      ),
      primaryYAxis: NumericAxis(
        majorGridLines: const MajorGridLines(
            width: 0,
            color: Colors
                .transparent), // Mengatur lebar garis grid menjadi 0 untuk sumbu-y
        majorTickLines: const MajorTickLines(
            width: 0,
            color: Colors
                .transparent), // Mengatur lebar garis tepi menjadi 0 untuk sumbu-y
      ),
      series: <ChartSeries>[
        BarSeries<AgeData, String>(
          dataSource: ageData,
          yValueMapper: (AgeData data, _) => data.count,
          xValueMapper: (AgeData data, _) => data.range,
          pointColorMapper: (AgeData data, _) => data.color,
          borderRadius: BorderRadius.circular(5),
          animationDuration: 1500,
        ),
      ],
    );
  }
}

class AgeData {
  final String range;
  final int count;
  final Color color;

  AgeData(this.range, this.count, this.color);
}
