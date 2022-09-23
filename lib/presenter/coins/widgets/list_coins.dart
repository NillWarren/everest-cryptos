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
