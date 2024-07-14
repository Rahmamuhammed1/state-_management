import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  RadioCubit() : super(RadioInitial(selectedRadio: -1));
  int radioIndex = -1;
  void selectRadio(int index) {
    emit(RadioInitial(selectedRadio: index));
  }
}