import 'package:flutter/material.dart';

import '../../model/coin_model.dart';
import 'coin_price_current.dart';
import 'coin_single_value.dart';

class CoinNames extends StatelessWidget {
  const CoinNames({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CoinModel model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.coinInitials,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              CoinBalance(model: model),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.nameCoin,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              SingleCoinValue(coin: model),
            ],
          ),
        ],
      ),
    );
  }
}
