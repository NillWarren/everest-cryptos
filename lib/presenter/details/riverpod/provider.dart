import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../coins/controller/wallet_controller.dart';
import '../../coins/repository/coin_repository.dart';

final walletControllerProvider = ChangeNotifierProvider(
  (ref) => WalletController(CoinRepository()),
);

final viewWalletValueProvider = StateProvider<bool>(
  (ref) => true,
);
final daysCountProvider = StateProvider<int>(
  (ref) => 5,
);
