import 'package:flutter/material.dart';

mixin ContadorBase {
  static Widget getConteudoTextoTelaPadrao(int i) {
    return Text(
      'Clicked $i',
      style: const TextStyle(fontSize: 40),
    );
  }

  static Widget getTelabuild(
    final BuildContext context,
    final String title,
    final void Function() onClickIncrement,
    final void Function() onClickDecrement,
    final Widget Function() funcConteudoTela,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: funcConteudoTela(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: onClickDecrement,
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: onClickIncrement,
                child: const Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
