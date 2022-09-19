import 'package:hooks_riverpod/hooks_riverpod.dart';

final timeFrameProvider = StateProvider<int>(
  (ref) => 5,
);
final precoIndexProvider = StateProvider<int>(
  (ref) => 0,
);
