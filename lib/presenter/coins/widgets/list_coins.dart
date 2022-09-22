// import 'package:card_1/presenter/coins/controller/wallet_controller.dart';
// import 'package:card_1/presenter/coins/model/details_model.dart';
// import 'package:card_1/presenter/coins/repository/coin_repository.dart';
// import 'package:card_1/presenter/models/coins.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:intl/intl.dart';

// import '../../../shared/riverpod/provider.dart';
// import '../../repositories/coins_repositry.dart';

// // ignore: must_be_immutable
// class ListCoins extends ConsumerStatefulWidget {
//   ListCoins({
//     super.key,
//   });

//   @override
//   ConsumerState<ListCoins> createState() => _ListCoinsState();
// }

// class _ListCoinsState extends ConsumerState<ListCoins> {
//   final tabela = MoedaRepository.tabela;
//   final walletController = ref.watch(walletControllerProvider);

//   NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

//   @override
//   Widget build(BuildContext context) {
//     final bool visible = ref.watch(visibleProvider);

//     return Expanded(
//       child: ListView.builder(
//         itemCount: tabela.length,
//         itemBuilder: (context, index) {
//           return Expanded(
//             child: ListTile(
//               contentPadding: const EdgeInsets.all(10),
//               leading: SizedBox(
//                 // ignore: sort_child_properties_last
//                 child: Image.asset(tabela[index].icone),
//                 width: 40,
//               ),
//               title: Text(
//                 tabela[index].sigla,
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               subtitle: Text(tabela[index].nome),
//               trailing: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       visible
//                           ? Text(
//                               real.format(tabela[index].preco),
//                               style: const TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold),
//                             )
//                           : Container(
//                               height: 25,
//                               width: 130,
//                               decoration: BoxDecoration(
//                                   color:
//                                       const Color.fromARGB(255, 225, 224, 224),
//                                   borderRadius: BorderRadius.circular(10)),
//                             ),
//                       const SizedBox(
//                         width: 4,
//                       ),
//                       SizedBox(
//                         height: 30,
//                         width: 20,
//                         child: IconButton(
//                           onPressed: () {
//                             Navigator.of(context).pushNamed('/details',
//                                 arguments: index); //aqui vai o argumento
//                           },
//                           icon: const Icon(Icons.arrow_forward_ios),
//                         ),
//                       )
//                     ],
//                   ),
//                   Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       visible
//                           ? Text(
//                               (tabela[index].fracao.toString()),
//                             )
//                           : Container(
//                               height: 15,
//                               width: 50,
//                               decoration: BoxDecoration(
//                                   color:
//                                       const Color.fromARGB(255, 225, 224, 224),
//                                   borderRadius: BorderRadius.circular(10)),
//                             ),
//                       const SizedBox(
//                         width: 30,
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/coin_model.dart';
import 'coins_widgets.dart/coin_icon.dart';
import 'coins_widgets.dart/coin_names.dart';

class CoinsList extends HookConsumerWidget {
  final CoinModel model;
  const CoinsList({
    super.key,
    required this.model,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CoinIcon(coinIcon: model.iconCoin),
          CoinNames(model: model),
          const SizedBox(width: 10),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 15,
          ),
        ],
      ),
    );
  }
}
