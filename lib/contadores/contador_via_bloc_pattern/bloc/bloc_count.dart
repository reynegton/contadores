import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class BlocCount extends BlocBase {
  @override
  void dispose() async{
    await _controllerContador?.close();
    super.dispose();
  }

  BlocCount() {
    _controllerContador = BehaviorSubject<int>.seeded(0);
  }
  
  BehaviorSubject<int>? _controllerContador;
  Sink<int> get _sinkContador => _controllerContador!.sink;
  Stream<int> get streamContador => _controllerContador!.stream;

  void addCount(int i){
    _sinkContador.add(_controllerContador!.value+i);
  }
}
