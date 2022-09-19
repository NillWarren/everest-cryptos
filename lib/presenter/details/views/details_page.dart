import 'package:flutter/material.dart';

import '../widgets/body_graphic.dart';
import '../widgets/header_details.dart';

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
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: const [
            HeaderDetails(),
            BodyGraphic(),
          ],
        ),
      ),
    );
  }
}
