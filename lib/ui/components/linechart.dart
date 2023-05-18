import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:torin_app/utilities/pallete.dart';

class LineChart extends StatelessWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Mon', 35),
      ChartData('Tue', 13),
      ChartData('Wed', 34),
      ChartData('Fri', 27),
      ChartData('Sat', 40),
      ChartData('Sun', 40),
    ];
    return SizedBox(
      height: 400,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,
        plotAreaBackgroundColor: Colors
            .transparent, // Atur warna latar belakang area plot menjadi transparan
        backgroundColor: Colors.transparent, //
        primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(
              width: 0), // Mengatur lebar garis grid menjadi 0 untuk sumbu-x
          majorTickLines: const MajorTickLines(
              width: 0), // Mengatur lebar garis tepi menjadi 0 untuk sumbu-x
        ),
        primaryYAxis: NumericAxis(
          majorGridLines: const MajorGridLines(
              width: 0), // Mengatur lebar garis grid menjadi 0 untuk sumbu-y
          majorTickLines: const MajorTickLines(
              width: 0), // Mengatur lebar garis tepi menjadi 0 untuk sumbu-y
        ),
        // Menggunakan CategoryAxis untuk sumbu-x
        series: <ChartSeries>[
          SplineAreaSeries<ChartData, String>(
            dataSource: chartData,
            enableTooltip: true,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            markerSettings: const MarkerSettings(
              isVisible: true,
              borderColor: ColorConstant.kPrimaryColor,
              color: ColorConstant.kPrimaryColor, // Ganti warna titik di sini
            ),
            color: ColorConstant.kTransparentColor,
            borderColor: ColorConstant.kPrimaryColor,
            borderWidth: 2,
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
