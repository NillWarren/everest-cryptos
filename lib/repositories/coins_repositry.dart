import 'package:card_1/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: 'assets/images/bitcoin.png',
        nome: 'Bitcoin',
        sigla: 'BTC',
        preco: 6557.00,
        fracao: '0.65   BTC',
        valorCarteira: 'R\$ 14.798.00',
        valorTotal: 'Valor total na Carteira'),
    Moeda(
      icone: 'assets/images/ethereum.png',
      nome: 'Ethereum',
      sigla: 'ETH',
      preco: 7996.00,
      fracao: '0.94   ETH',
      valorCarteira: '',
      valorTotal: '',
    ),
    Moeda(
      icone: 'assets/images/LTC.png',
      nome: 'Litecoin',
      sigla: 'LTC',
      preco: 245.00,
      fracao: '0.82   LTC',
      valorCarteira: '',
      valorTotal: '',
    ),
  ];
}
