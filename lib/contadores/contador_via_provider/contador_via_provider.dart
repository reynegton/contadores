import 'package:contadores/contadores/contador_via_provider/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/tela_contador_base.dart';

class ContadorViaProvider extends StatelessWidget {
  const ContadorViaProvider({Key? key}) : super(key: key);

  Widget _tela() => Consumer<CounterProvider>(
        builder: (context, value, child) {
          return ContadorBase.getConteudoTextoTelaPadrao(value.count);
        },
      );
  @override
  Widget build(BuildContext context) {
    return ContadorBase.getTelabuild(
      context,
      "Counter Provider",
      context.read<CounterProvider>().increment,
      context.read<CounterProvider>().decrement,
      _tela,
    );
  }
}
