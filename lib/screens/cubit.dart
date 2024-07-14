import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_6/cubits/filter_bar_cubit/filter_bar_cubit.dart';
import 'package:task_6/cubits/radio_cubit/radio_cubit.dart';
import 'package:task_6/cubits/show_hide_text_cubit/show_hide_text_cubit.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          context.read<FilterBarCubit>().filterNames.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: BlocBuilder<FilterBarCubit, FilterBarState>(
                            builder: (context, state) {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: context
                                        .read<FilterBarCubit>()
                                        .buttonColor),
                                onPressed: () {
                                  context
                                      .read<FilterBarCubit>()
                                      .selectButton(index);
                                },
                                child: Text(
                                  context
                                      .read<FilterBarCubit>()
                                      .filterNames[index],
                                  style: TextStyle(
                                      color: context
                                          .read<FilterBarCubit>()
                                          .textColor),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<ShowHideTextCubit, ShowHideTextState>(
              builder: (context, state) {
                return TextField(
                  obscureText: context.read<ShowHideTextCubit>().isObscure,
                  decoration: InputDecoration(
                    labelText: 'Enter Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        context.read<ShowHideTextCubit>().showHideText();
                      },
                      icon: context.read<ShowHideTextCubit>().suffixIcon,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder()),
              onPressed: () {},
              child: const Text(
                'Show Text',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder()),
              onPressed: () {},
              child: const Text(
                'Show cubit image',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder()),
              onPressed: () {},
              child: const Text(
                'Show the red circle',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder()),
              onPressed: () {},
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}