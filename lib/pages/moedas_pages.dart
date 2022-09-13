import 'package:card_1/repositories/moeda_repositry.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoedasPageWidgte extends StatefulWidget {
  const MoedasPageWidgte({super.key});

  @override
  State<MoedasPageWidgte> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPageWidgte> {
  bool visible = true;
  final tabela = MoedaRepository.tabela;
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  Widget listaCoins(int moeda) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: SizedBox(
            // ignore: sort_child_properties_last
            child: Image.asset(tabela[moeda].icone),
            width: 40,
          ),
          title: Text(
            tabela[moeda].sigla,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(tabela[moeda].nome),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  visible
                      ? Text(
                          real.format(tabela[moeda].preco),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      : Container(
                          height: 25,
                          width: 200,
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
                          (tabela[moeda].fracao.toString()),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(223, 71, 71, 71),
        currentIndex: 1,
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
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
                    visible = !visible;
                  }),
                  icon: Icon(
                    visible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
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
                        color: const Color.fromARGB(255, 225, 224, 224),
                        borderRadius: BorderRadius.circular(10)),
                  ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Valor total de moedas',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            listaCoins(0),
            const Divider(),
            listaCoins(1),
            const Divider(),
            listaCoins(2),
          ],
        ),
      ),
    );
  }
}
