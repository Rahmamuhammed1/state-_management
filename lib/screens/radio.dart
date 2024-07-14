import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_6/cubits/radio_cubit/radio_cubit.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RadioCubit, RadioState>(
        builder: (context, state) {
          return Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title: Text('${index + 1}'),
                  value: index,
                  groupValue: context.read<RadioCubit>().radioIndex,
                  onChanged: (value) {
                    context.read<RadioCubit>().selectRadio(value!);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}