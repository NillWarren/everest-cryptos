import 'package:flutter/material.dart';

import '../widgets/body_graphic.dart';
import '../widgets/button_convert_coin.dart';
import '../widgets/header_details.dart';
import '../widgets/information_currency.dart';
import '../widgets/time_frame.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalhes',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: const [
            HeaderDetails(),
            BodyGraphic(),
            TimeFrame(),
            CurrencyInformation(),
            ButtonConvertCoin()
          ],
        ),
      ),
    );
  }
}
