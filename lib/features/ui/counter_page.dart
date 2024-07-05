// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, type_literal_in_constant_pattern, unused_local_variable

import 'package:fc_21_akshit_madan_bloc_listener_builder_consumer/features/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  CounterBloc counterBloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Counter Page")),
      ),
      floatingActionButton:
          FloatingActionButton(
            child: Icon(Icons.add), onPressed: () {}),
      body: BlocBuilder<CounterBloc, CounterState>(
        bloc: counterBloc,
        builder: (context, state) {
          switch (state.runtimeType) {
            case CounterIncrementState:
              final successState = state as CounterIncrementState;
              return Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(successState.val.toString(),
                          style: TextStyle(
                            fontSize: 60,
                          ))
                    ],
                  ),
                ),
              );

            default:
              Center(child: Text("Not Found"));
          }
        },
      ),
    );
  }
}
