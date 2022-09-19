import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../riverpod/provider.dart';
import 'time_frame_item.dart';

class TimeFrame extends HookConsumerWidget {
  const TimeFrame({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeFrame = ref.watch(timeFrameProvider.state);
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            timeFrame.state = 5;
            ref.read(precoIndexProvider.notifier).state = 0;
          },
          child: TimeFrameItem(
            time: 5,
            itemSelected: timeFrame.state == 5 ? true : false,
          ),
        ),
        GestureDetector(
          onTap: () {
            timeFrame.state = 15;
            ref.read(precoIndexProvider.notifier).state = 1;
          },
          child: TimeFrameItem(
            time: 15,
            itemSelected: timeFrame.state == 15 ? true : false,
          ),
        ),
        GestureDetector(
          onTap: () {
            timeFrame.state = 30;
            ref.read(precoIndexProvider.notifier).state = 2;
          },
          child: TimeFrameItem(
            time: 30,
            itemSelected: timeFrame.state == 30 ? true : false,
          ),
        ),
        GestureDetector(
          onTap: () {
            timeFrame.state = 45;
            ref.read(precoIndexProvider.notifier).state = 3;
          },
          child: TimeFrameItem(
            time: 45,
            itemSelected: timeFrame.state == 45 ? true : false,
          ),
        ),
        GestureDetector(
          onTap: () {
            timeFrame.state = 90;
            ref.read(precoIndexProvider.notifier).state = 4;
          },
          child: TimeFrameItem(
            time: 90,
            itemSelected: timeFrame.state == 90 ? true : false,
          ),
        ),
      ],
    );
  }
}
