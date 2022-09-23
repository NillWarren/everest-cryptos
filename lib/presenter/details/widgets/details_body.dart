import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../coins/model/coin_model.dart';
import 'time_frame.dart';
import 'button_convert_coin.dart';
import 'header_details.dart';
import 'line_chart_graphic.dart';
import 'price_currency.dart';
import 'qtd_currency.dart';
import 'value_coin.dart';
import 'variacao_days.dart';

class DatailsBody extends StatelessWidget {
  final CoinModel model;
  final StateController<int> timeFrame;

  const DatailsBody({
    Key? key,
    required this.model,
    required this.timeFrame,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: const Text(
            'Detalhes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                HeaderDetails(
                  nameCoin: model.nameCoin,
                  imgIcon: model.iconCoin,
                  ticker: model.coinInitials,
                  currentPrice: model.priceCurrent.toDouble(),
                ),
                Graphic(model: model),
                const TimeFrame(),
                Column(
                  children: [
                    PriceCurrency(
                      priceCUrrency: (model.prices[timeFrame.state - 1]),
                    ),
                    VariationCurrency(
                      variationCurrency: (-model.prices.first.toDouble() +
                          model.prices[timeFrame.state - 1].toDouble()),
                    ),
                    QtdCoin(
                      priceCUrrency: model.coinQuantity.toDouble(),
                      initialsCoin: model.coinInitials,
                    ),
                    ValueCoin(
                        priceCurrency: (model.prices[timeFrame.state - 1] *
                            model.coinQuantity)),
                  ],
                ),
                ButtonConvertCoin(onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
