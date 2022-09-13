import 'package:card_1/models/moeda.dart';
import 'package:card_1/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../repositories/moeda_repositry.dart';

class ListCoins extends ConsumerStatefulWidget {
  int moeda;

  ListCoins({super.key, required this.moeda});

  @override
  ConsumerState<ListCoins> createState() => _ListCoinsState();
}

class _ListCoinsState extends ConsumerState<ListCoins> {
  final tabela = MoedaRepository.tabela;
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  @override
  Widget build(BuildContext context) {
    final bool visible = ref.watch(visibleProvider);
    return Column(
      children: <Widget>[
        ListTile(
          leading: SizedBox(
            // ignore: sort_child_properties_last
            child: Image.asset(tabela[widget.moeda].icone),
            width: 40,
          ),
          title: Text(
            tabela[widget.moeda].sigla,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(tabela[widget.moeda].nome),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  visible
                      ? Text(
                          real.format(tabela[widget.moeda].preco),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      : Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 225, 224, 224),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  visible
                      ? Text(
                          (tabela[widget.moeda].fracao.toString()),
                        )
                      : Container(
                          height: 15,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 225, 224, 224),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                  const SizedBox(
                    width: 30,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
