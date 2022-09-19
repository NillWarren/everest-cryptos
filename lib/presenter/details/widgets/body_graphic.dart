import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../riverpod/provider.dart';
import 'graphic_ ninety_days.dart';
import 'graphic_fifteen_days.dart';
import 'graphic_five_days.dart';
import 'graphic_fortyFive_days.dart';
import 'graphic_thirty_days.dart';

class BodyGraphic extends HookConsumerWidget {
  const BodyGraphic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeFrame = ref.watch(timeFrameProvider.state);

    switch (timeFrame.state) {
      case (5):
        return const Graphic5Days();
      case (15):
        return const Graphic15Days();
      case (30):
        return const Graphic30Days();
      case (45):
        return const Graphic45Days();
      case (90):
        return const Graphic90Days();
      default:
        return const Graphic5Days();
    }
  }
}
