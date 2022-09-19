import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Graphic90Days extends StatelessWidget {
  const Graphic90Days({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.18,
      width: size.width,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 45,
          minY: 0,
          maxY: 11,
          titlesData: FlTitlesData(show: false),
          gridData: FlGridData(
            show: false,
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 0),
                const FlSpot(0.5, 0.5),
                const FlSpot(1, 1),
                const FlSpot(1.5, 0.8),
                const FlSpot(2, 1.8),
                const FlSpot(2.5, 2),
                const FlSpot(3, 2.5),
                const FlSpot(3.5, 3),
                const FlSpot(4, 2.8),
                const FlSpot(4.2, 3),
                const FlSpot(4.5, 3.2),
                const FlSpot(5, 4.2),
                const FlSpot(5.5, 3),
                const FlSpot(6, 3.2),
                const FlSpot(6.5, 4.2),
                const FlSpot(7, 4.6),
                const FlSpot(7.5, 5),
                const FlSpot(8, 5.2),
                const FlSpot(8.5, 5.8),
                const FlSpot(9, 5.5),
                const FlSpot(9.5, 6),
                const FlSpot(10, 6.2),
                const FlSpot(10.5, 7),
                const FlSpot(11, 6.5),
                const FlSpot(11.5, 6.7),
                const FlSpot(12, 8),
                const FlSpot(12.5, 7.3),
                const FlSpot(13, 8.5),
                const FlSpot(13.5, 9),
                const FlSpot(14, 10.6),
                const FlSpot(14.5, 9.1),
                const FlSpot(15, 5),
                const FlSpot(15.5, 5),
                const FlSpot(16, 5.2),
                const FlSpot(16.5, 5.8),
                const FlSpot(17, 5.5),
                const FlSpot(17.5, 6),
                const FlSpot(18, 6.2),
                const FlSpot(18.5, 7),
                const FlSpot(19, 6.5),
                const FlSpot(19.5, 6.7),
                const FlSpot(20, 7.3),
                const FlSpot(20.5, 8),
                const FlSpot(21, 9),
                const FlSpot(21.5, 8.5),
                const FlSpot(22, 9.1),
                const FlSpot(22.5, 0.5),
                const FlSpot(23, 1),
                const FlSpot(23.5, 0.8),
                const FlSpot(24, 1.8),
                const FlSpot(24.5, 2),
                const FlSpot(25, 2.5),
                const FlSpot(25.5, 3),
                const FlSpot(26, 2.8),
                const FlSpot(26.5, 3),
                const FlSpot(27, 4.2),
                const FlSpot(27.5, 3.2),
                const FlSpot(28, 3.2),
                const FlSpot(28.5, 3),
                const FlSpot(29, 4.6),
                const FlSpot(29.5, 4.2),
                const FlSpot(30, 5.2),
                const FlSpot(30.5, 5.8),
                const FlSpot(31, 6.2),
                const FlSpot(32.5, 7),
                const FlSpot(33, 6.5),
                const FlSpot(33.5, 6.7),
                const FlSpot(34, 8),
                const FlSpot(34.5, 7.3),
                const FlSpot(35, 8.5),
                const FlSpot(35.5, 9),
                const FlSpot(36, 10.6),
                const FlSpot(36.5, 9.1),
                const FlSpot(37, 5),
                const FlSpot(37.5, 5),
                const FlSpot(38, 5.2),
                const FlSpot(38.5, 5.8),
                const FlSpot(39, 5.5),
                const FlSpot(39.5, 6),
                const FlSpot(40, 6.2),
                const FlSpot(40.5, 7),
                const FlSpot(41, 6.5),
                const FlSpot(41.5, 6.7),
                const FlSpot(42, 7.3),
                const FlSpot(42.5, 8),
                const FlSpot(43, 9),
                const FlSpot(43.5, 8.5),
                const FlSpot(44, 9.1),
                const FlSpot(44.5, 8.5),
              ],
              dotData: FlDotData(show: false),
              color: const Color.fromARGB(255, 224, 43, 87),
            ),
          ],
        ),
      ),
    );
  }
}