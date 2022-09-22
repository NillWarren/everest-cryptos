import 'package:flutter/material.dart';

class ConvertCoinsButton extends StatelessWidget {
  const ConvertCoinsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color.fromARGB(230, 207, 52, 41),
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      onPressed: () {},
      child: const Text(
        'Converter moeda',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
