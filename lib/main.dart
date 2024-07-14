import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_6/cubits/filter_bar_cubit/filter_bar_cubit.dart';
import 'package:task_6/cubits/radio_cubit/radio_cubit.dart';
import 'package:task_6/cubits/show_hide_text_cubit/show_hide_text_cubit.dart';
import 'package:task_6/screens/cubit.dart';
import 'package:task_6/screens/radio.dart';
import 'package:task_6/screens/set_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<FilterBarCubit>(create: (_) => FilterBarCubit()),
          BlocProvider<ShowHideTextCubit>(create: (_) => ShowHideTextCubit()),
          BlocProvider<RadioCubit>(create: (_) => RadioCubit()),
        ],
        child: const SetState(),
      ),
    );
  }
}
