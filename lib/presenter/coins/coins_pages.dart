import 'package:flutter/material.dart';

import 'widgets/body_coins.dart';
import 'widgets/botton_navigation_bar.dart';

class MoedasPageWidgte extends StatelessWidget {
  const MoedasPageWidgte({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottonBar(),
      body: BodyCoins(),
    );
  }
}
