import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../shared/riverpod/provider.dart';
import '../../repositories/coins_repositry.dart';
import 'list_coins.dart';

class BodyCoins extends ConsumerStatefulWidget {
  const BodyCoins({super.key});

  @override
  ConsumerState<BodyCoins> createState() => _BodyCoinsState();
}

class _BodyCoinsState extends ConsumerState<BodyCoins> {
  final tabela = MoedaRepository.tabela;
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  @override
  Widget build(BuildContext context) {
    final bool visible = ref.watch(visibleProvider);
    return SafeArea(
      child: Column(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Cripto',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(224, 43, 87, 1),
                      ),
                    ),
                    IconButton(
                      onPressed: () => setState(() {
                        ref.read(visibleProvider.notifier).state = !visible;
                      }),
                      icon: Icon(
                        visible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        visible
                            ? Text(
                                tabela[0].valorCarteira,
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            : Container(
                                height: 25,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 225, 224, 224),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Valor total de moedas',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
          ListCoins(),
        ],
      ),
    );
  }
}
