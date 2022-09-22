import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../coins/model/coin_model.dart';

import '../riverpod/provider.dart';

import '../widgets/details_body.dart';

class DetailsPage extends HookConsumerWidget {
  final CoinModel model;

  const DetailsPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  static const routeName = '/details-page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final daysCount = ref.watch(daysCountProvider.state);
    return DetailsBody(model: model, daysCount: daysCount);
  }
}
