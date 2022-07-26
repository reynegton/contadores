// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../widgets/tela_contador_base.dart';
import 'bloc/bloc_count.dart';

class ContadorViaBlocPattern extends StatefulWidget {
  const ContadorViaBlocPattern({Key? key}) : super(key: key);

  @override
  _ContadorViaBlocPatternState createState() => _ContadorViaBlocPatternState();
}

class _ContadorViaBlocPatternState extends State<ContadorViaBlocPattern> {
  final bloc = BlocCount();

  _increment() => bloc.addCount(1);
  _decrement() => bloc.addCount(-1);
  Widget _tela() => StreamBuilder<int>(
        stream: bloc.streamContador,
        builder: (context, snapshot) {
          return ContadorBase.getConteudoTextoTelaPadrao(snapshot.data ?? 0);
        },
      );

  @override
  Widget build(BuildContext context) {
    return ContadorBase.getTelabuild(
      context,
      "Counter Bloc Pattern",
      _increment,
      _decrement,
      _tela,
    );
  }
}
