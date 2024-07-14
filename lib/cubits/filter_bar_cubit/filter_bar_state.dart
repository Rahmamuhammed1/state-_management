part of 'filter_bar_cubit.dart';

@immutable
sealed class FilterBarState {}

final class FilterBarInitial extends FilterBarState {
  final int selectedIndex;

  FilterBarInitial({required this.selectedIndex});
}