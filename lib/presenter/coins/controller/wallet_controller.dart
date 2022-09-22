import 'package:flutter/material.dart';

import '../model/coin_model.dart';
import '../repository/coin_repository.dart';

class WalletController extends ChangeNotifier {
  CoinRepository coinRepo;
  late List<CoinModel> coins = [];

  WalletController(
    this.coinRepo,
  ) {
    coins = coinRepo.coins();
  }
}
