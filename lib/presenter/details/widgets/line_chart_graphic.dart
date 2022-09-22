import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../coins/model/coin_model.dart';
import '../riverpod/provider.dart';

class LineChartGraphic extends HookConsumerWidget {
  final CoinModel model;

  const LineChartGraphic({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final daysCount = ref.watch(daysCountProvider.state).state;
    //pega lista no coin model pela index
    generateList() {
      List<FlSpot> spotList = [];
      for (var i = 0; i <= daysCount; i++) {
        spotList.add(FlSpot(i.toDouble(), model.coord[i].toDouble()));
      }
      return spotList;
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height - 650,
      width: MediaQuery.of(context).size.width - 40,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: daysCount.toDouble(),
          minY: 0,
          maxY: 45,
          titlesData: FlTitlesData(show: false),
          gridData: FlGridData(
            show: false,
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: generateList(),
              dotData: FlDotData(show: false),
              color: const Color.fromARGB(230, 207, 52, 41),
            ),
          ],
        ),
        swapAnimationDuration: const Duration(milliseconds: 450),
        swapAnimationCurve: Curves.decelerate,
      ),
    );
  }
}
