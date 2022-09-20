import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_1/presenter/models/coins.dart';
import 'package:card_1/presenter/repositories/coins_repositry.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../riverpod/provider.dart';

class HeaderDetails extends HookConsumerWidget {
  const HeaderDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //moeda = tabela.index

    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.width;

    List<Moeda> tabela = MoedaRepository.tabela;

    int index = ModalRoute.of(context)!.settings.arguments as int;

    Moeda moeda = tabela[index];

    int moedaIndex = ref.watch(precoIndexProvider);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    moeda.nome.toString(),
                    style: const TextStyle(
                        fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    moeda.sigla.toString(),
                    style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 117, 118, 128)),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: MediaQuery.of(context).size.width * 0.12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(moeda.icone),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: sizeHeight * 0.05),
          SizedBox(
            width: sizeWidth * 0.6,
            child: Text(
              'R\$ ${NumberFormat.simpleCurrency(locale: 'pt_BR', decimalDigits: 2, name: "").format(tabela[0].precoDias[moedaIndex])}',
              style: TextStyle(
                fontSize: sizeHeight * 0.08,
                fontWeight: FontWeight.w700,
              ),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
