import 'package:flutter/material.dart';

class BottonBar extends StatefulWidget {
  const BottonBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return BottomNavigationBar(
      selectedItemColor: const Color.fromARGB(230, 207, 52, 41),
      unselectedItemColor: Colors.grey,
      iconSize: 35,
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
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
    );
  }
}
