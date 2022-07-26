import 'package:bloc/bloc.dart';

class ContadorCubit extends Cubit<int> {
  ContadorCubit() : super(0);
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
