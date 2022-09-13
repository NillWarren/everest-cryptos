import 'package:card_1/provider/provider.dart';
import 'package:card_1/repositories/coins_repositry.dart';
import 'package:card_1/widgets/coins_body.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../widgets/list_coins.dart';

class MoedasPageWidgte extends StatelessWidget {
  const MoedasPageWidgte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(223, 71, 71, 71),
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Subtract.png'),
                color: Color.fromRGBO(224, 43, 87, 1),
              ),
              label: 'Portifólio',
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/Union.png'),
                ),
                label: 'Movimentações'),
          ],
        ),
        body: const BodyCoins());
  }
}
