import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MovimentsPage extends HookConsumerWidget {
  const MovimentsPage({Key? key}) : super(key: key);

  static const routeName = '/moviments-page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 1,
          title: const Text(
            'Movimentaçoes',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
