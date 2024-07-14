part of 'radio_cubit.dart';

@immutable
sealed class RadioState {}

final class RadioInitial extends RadioState {
  final int selectedRadio;
  RadioInitial({required this.selectedRadio});
}