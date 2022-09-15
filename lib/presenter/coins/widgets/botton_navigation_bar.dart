import 'package:card_1/presenter/coins/coins_pages.dart';
import 'package:card_1/presenter/movements/movements_page.dart';
import 'package:flutter/material.dart';

class BottonBar extends StatefulWidget {
  const BottonBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  late int _currentIndex = 0;
  List pages = [
    const MoedasPageWidgte(),
    const MovementsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(230, 207, 52, 41),
        unselectedItemColor: Colors.grey,
        iconSize: 35,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Subtract.png')),
            label: 'Portifolio',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Union.png')),
            label: 'Movimentações',
          ),
        ],
      ),
    );
  }
}
