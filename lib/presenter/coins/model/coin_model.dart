class CoinModel {
  String coinInitials;
  String nameCoin;
  double priceCurrent;
  double coinVariation;
  double coinQuantity;
  String iconCoin;
  List<double> coord;
  late double? percent;

  CoinModel({
    required this.coinInitials,
    required this.nameCoin,
    required this.priceCurrent,
    required this.coinVariation,
    required this.coinQuantity,
    required this.iconCoin,
    required this.coord,
    this.percent,
  }) {
    percent = _perCoinValue();
  }

  double _perCoinValue() {
    return (coinVariation * 100) / priceCurrent / 100;
  }
}
