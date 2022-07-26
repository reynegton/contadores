import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

import '../../widgets/tela_contador_base.dart';

class CountadorViaRxNotifier extends StatelessWidget {
  final counter = RxNotifier<int>(0);
  CountadorViaRxNotifier({Key? key}) : super(key: key);

  void _increment() => counter.value++;
  void _decrement() => counter.value--;
  Widget _tela() => RxBuilder(
        builder: (_) {
          return ContadorBase.getConteudoTextoTelaPadrao(counter.value);
        },
      );

  @override
  Widget build(BuildContext context) {
    return ContadorBase.getTelabuild(
      context,
      'Count RxNotifier',
      _increment,
      _decrement,
      _tela,
    );
  }
}
