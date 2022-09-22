import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../details/riverpod/provider.dart';
import '../../details/views/details_page.dart';

import '../model/coin_model.dart';

import '../widgets/list_coins.dart';

class CryptoPage extends HookConsumerWidget {
  const CryptoPage({Key? key}) : super(key: key);

  static const routeName = '/crypto-page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletController = ref.watch(walletControllerProvider);
    final viewWalletValue = ref.watch(viewWalletValueProvider.state);

    mostrarDetalhes(CoinModel model) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailsPage(model: model),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.height * .01,
              top: MediaQuery.of(context).size.height * .02,
              bottom: MediaQuery.of(context).size.height * .05,
              left: MediaQuery.of(context).size.width * .06,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Cripto',
                      style: TextStyle(
                        color: Color.fromARGB(230, 207, 52, 41),
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        viewWalletValue.state = !viewWalletValue.state;
                      },
                      icon: Icon(
                        viewWalletValue.state
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    )
                  ],
                ),
                Visibility(
                  child: viewWalletValue.state
                      ? Text(
                          'R\$ 100.00,00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height * .045,
                          ),
                        )
                      : Text(
                          'R\$ * * * * * * *',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height * .045,
                          ),
                        ),
                ),
                const Text(
                  "Valor total de moedas",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: walletController.coins.length, //valor total =3
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => mostrarDetalhes(walletController.coins[index]),
                  child: CoinsList(
                    model: walletController.coins[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
