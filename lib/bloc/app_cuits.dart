import 'package:bloc/bloc.dart';
import 'package:travel_app/bloc/cubit_states.dart';

class AppCubits extends Cubit {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
