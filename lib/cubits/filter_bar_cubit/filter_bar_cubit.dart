import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'filter_bar_state.dart';

class FilterBarCubit extends Cubit<FilterBarState> {
  FilterBarCubit() : super(FilterBarInitial(selectedIndex: -1));

  Color buttonColor = Colors.grey;
  Color textColor = Colors.black;
  bool isSelected = false;
  final List filterNames = const [
    'قيد التنفيذ',
    'الملغية',
    'المكتملة',
    'تحت المراجعة',
    'تمت'
  ];

  void selectButton(int index) {
    isSelected = !isSelected;
    
    buttonColor = isSelected ? Colors.blue : Colors.grey;
    textColor = isSelected ? Colors.white : Colors.black;
    emit(FilterBarInitial(selectedIndex: index));
  }
}