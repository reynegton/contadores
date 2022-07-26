import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/tela_contador_base.dart';
import 'cubit/contador_cubit.dart';

class ContadorViaCubit extends StatelessWidget {
  const ContadorViaCubit({Key? key}) : super(key: key);
  _increment(BuildContext context) => context.read<ContadorCubit>().increment();
  _decrement(BuildContext context) => context.read<ContadorCubit>().decrement();

  Widget _tela(BuildContext context) => BlocBuilder<ContadorCubit, int>(
        builder: (context, count) =>
            ContadorBase.getConteudoTextoTelaPadrao(count),
      );
  @override
  Widget build(BuildContext context) {
    return ContadorBase.getTelabuild(
      context,
      "Counter Cubit",
      () => _increment(context),
      () => _decrement(context),
      () => _tela(context),
    );
  }
}
