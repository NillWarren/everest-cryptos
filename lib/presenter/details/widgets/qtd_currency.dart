import 'package:flutter/material.dart';

class QuantityCoin extends StatelessWidget {
  final double currentPriceCoin;
  final String initialsCoin;

  const QuantityCoin({
    Key? key,
    required this.currentPriceCoin,
    required this.initialsCoin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Quantidade',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 19,
            ),
          ),
          Text(
            '$currentPriceCoin',
            style: TextStyle(
              fontSize: 19,
              color: (currentPriceCoin < 0) ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
