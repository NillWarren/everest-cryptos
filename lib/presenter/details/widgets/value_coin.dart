import 'package:flutter/material.dart';

class ValueCoin extends StatelessWidget {
  final double priceCurrency;

  const ValueCoin({
    Key? key,
    required this.priceCurrency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Valor',
            style: TextStyle(
              fontSize: 19,
              color: Colors.grey,
            ),
          ),
          Text(
            textAlign: TextAlign.end,
            'R\$ ${priceCurrency.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 19,
              color: (priceCurrency < 0) ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
