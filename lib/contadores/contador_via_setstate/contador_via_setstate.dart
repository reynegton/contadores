// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../widgets/tela_contador_base.dart';

class ContadorViaSetState extends StatefulWidget {
  const ContadorViaSetState({Key? key}) : super(key: key);

  @override
  _ContadorViaSetState createState() => _ContadorViaSetState();
}

class _ContadorViaSetState extends State<ContadorViaSetState> {
  int _counter = 0;
  _increment() {
    setState(
      () {
        _counter++;
      },
    );
  }

  _decrement() {
    setState(
      () {
        _counter--;
      },
    );
  }

  Widget _tela() => ContadorBase.getConteudoTextoTelaPadrao(_counter);

  @override
  Widget build(BuildContext context) {
    return ContadorBase.getTelabuild(
      context,
      'Count SetState',
      _increment,
      _decrement,
      _tela,
    );
  }
}
