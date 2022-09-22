import 'package:flutter/material.dart';

class ButtonGraphDays extends StatelessWidget {
  final int days;

  const ButtonGraphDays({
    Key? key,
    required this.days,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height - 640,
      width: 40,
      child: Text(
        '${days}D',
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
