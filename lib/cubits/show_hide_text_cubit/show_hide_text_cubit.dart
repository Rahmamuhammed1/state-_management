import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'show_hide_text_state.dart';

class ShowHideTextCubit extends Cubit<ShowHideTextState> {
  ShowHideTextCubit() : super(ShowHideTextInitial());

  bool isObscure = true;
  Icon suffixIcon = const Icon(Icons.visibility_off);
  void showHideText() {
    isObscure = !isObscure;
    suffixIcon = isObscure
        ? const Icon(Icons.visibility_off)
        : const Icon(Icons.visibility);
    emit(ShowHideTextInitial());
  }
}