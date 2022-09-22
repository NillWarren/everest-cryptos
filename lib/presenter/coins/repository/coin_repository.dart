import '../model/coin_model.dart';
import 'coord_graphic.dart';

class CoinRepository {
  List<CoinModel> coins() {
    List<CoinModel> coins = [
      CoinModel(
        nameCoin: 'Bitcoin',
        coinInitials: 'BTC',
        iconCoin: 'assets/images/bitcoin.png',
        coinVariation: 8.00,
        priceCurrent: (1031.21),
        coinQuantity: (0.51),
        coord: coord,
      ),
      CoinModel(
        nameCoin: 'Ethereum',
        coinInitials: 'ETH',
        iconCoin: 'assets/images/ethereum.png',
        coinVariation: -222.25,
        priceCurrent: (799.96),
        coinQuantity: (0.51),
        coord: coord,
      ),
      CoinModel(
        nameCoin: 'Litecoin',
        coinInitials: 'LTC',
        iconCoin: 'assets/images/LTC.png',
        coinVariation: 82.9,
        priceCurrent: (245.01),
        coinQuantity: (0.51),
        coord: coord,
      ),
    ];
    return coins;
  }
}
