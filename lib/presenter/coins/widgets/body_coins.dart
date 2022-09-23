import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../details/riverpod/provider.dart';

class WalletInfo extends HookConsumerWidget {
  const WalletInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewWalletValue = ref.watch(viewWalletValueProvider.state);

    return Visibility(
      child: viewWalletValue.state
          ? Text(
              'R\$ 100.000,00',
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height * .045,
              ),
            )
          : Text(
              'R\$ * * * * * * * ',
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height * .045,
              ),
            ),
    );
  }
}
