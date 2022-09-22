import 'package:flutter/material.dart';

class CurrentPriceCoin extends StatelessWidget {
  final double currentPriceCoin;

  const CurrentPriceCoin({
    Key? key,
    required this.currentPriceCoin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Preço atual',
            style: TextStyle(
              fontSize: 19,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: Text(
              textAlign: TextAlign.end,
              'R\$ $currentPriceCoin',
              style: const TextStyle(
                fontSize: 19,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
