import 'package:flutter/material.dart';

import '../../widgets/tela_contador_base.dart';

class ContadorViaNotifier extends StatelessWidget {
  final counter = ValueNotifier<int>(0);

  ContadorViaNotifier({Key? key}) : super(key: key);

  _increment() => counter.value++;
  _decrement() => counter.value--;
  Widget _tela() => ValueListenableBuilder<int>(
        valueListenable: counter,
        builder: (context, value, child) {
          return ContadorBase.getConteudoTextoTelaPadrao(value);
        },
      );
  @override
  Widget build(BuildContext context) {
    return ContadorBase.getTelabuild(
      context,
      "Counter Value Notifier",
      _increment,
      _decrement,
      _tela,
    );
  }
}
