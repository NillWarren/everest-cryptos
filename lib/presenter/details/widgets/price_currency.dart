import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../models/coins.dart';
import '../../repositories/coins_repositry.dart';
import '../riverpod/provider.dart';

class PriceCurrency extends HookConsumerWidget {
  final double priceCUrrency;
  const PriceCurrency({
    Key? key,
    required this.priceCUrrency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.width;
    List<Moeda> moeda = MoedaRepository.tabela;
    int moedaIndex = ref.watch(precoIndexProvider);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: const Color.fromARGB(255, 227, 228, 235),
            width: sizeHeight * 0.002,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Preço atual',
              style: TextStyle(
                fontSize: 19,
                color: Color.fromARGB(255, 117, 118, 128),
              ),
            ),
            SizedBox(
              width: sizeWidth * 0.35,
              child: AutoSizeText(
                textAlign: TextAlign.end,
                'R\$ ${NumberFormat.simpleCurrency(locale: 'pt_BR', decimalDigits: 2, name: "").format(moeda[0].precoDias[moedaIndex])}',
                style: const TextStyle(
                  fontSize: 19,
                  color: Color.fromARGB(255, 47, 47, 51),
                ),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
