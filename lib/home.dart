import 'package:contadores/contadores/contador_via_provider/contador_via_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'contadores/contador_via_bloc_pattern/contador_via_bloc_pattern.dart';
import 'contadores/contador_via_cubit/contador_via_cubit.dart';
import 'contadores/contador_via_cubit/cubit/contador_cubit.dart';
import 'contadores/contador_via_notifier/contador_via_notifier.dart';
import 'contadores/contador_via_provider/provider/counter_provider.dart';
import 'contadores/contador_via_rx_notifier/contador_via_rx_notifier.dart';
import 'contadores/contador_via_setstate/contador_via_setstate.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Select"),
      ),
      body: Center(
        child: ListView(
          children: [
            _getItem(
              context: context,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContadorViaSetState()),
                );
              },
              title: 'Set State',
            ),
            _getItem(
              context: context,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContadorViaNotifier()),
                );
              },
              title: 'Notifier',
            ),
            _getItem(
              context: context,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CountadorViaRxNotifier()),
                );
              },
              title: 'RxNotifier',
            ),
            _getItem(
              context: context,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider<ContadorCubit>(
                      create: (_) => ContadorCubit(),
                      child: const ContadorViaCubit(),
                    ),
                  ),
                );
              },
              title: 'Cubit',
            ),
            _getItem(
              context: context,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContadorViaBlocPattern(),
                  ),
                );
              },
              title: 'Bloc Pattern',
            ),
            _getItem(
              context: context,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (_) => ContadorCubit(),
                      child: MultiProvider(
                        providers: [
                          ChangeNotifierProvider(
                            create: (_) => CounterProvider(),
                          ),
                        ],
                        child: const ContadorViaProvider(),
                      ),
                    ),
                  ),
                );
              },
              title: 'Provider',
            ),
          ],
        ),
      ),
    );
  }

  Widget _getItem({
    required BuildContext context,
    required String title,
    required void Function() onpressed,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
