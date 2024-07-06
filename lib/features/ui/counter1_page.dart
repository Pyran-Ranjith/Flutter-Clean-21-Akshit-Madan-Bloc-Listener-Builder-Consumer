// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, type_literal_in_constant_pattern, unused_local_variable

// import 'package:fc_21_akshit_madan_bloc_listener_builder_consumer/features/Counter/bloc/Counter1_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter/bloc/counter1_bloc.dart';

class Counter1Page extends StatefulWidget {
  const Counter1Page({super.key});

  @override
  State<Counter1Page> createState() => _Counter1PageState();
}

class _Counter1PageState extends State<Counter1Page> {
  Counter1Bloc counter1Bloc = Counter1Bloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Counter1 Page")),
      ),
      floatingActionButton:
          FloatingActionButton(
            child: Icon(Icons.add), onPressed: () {}),
      body: BlocBuilder<Counter1Bloc, Counter1State>(
        bloc: counter1Bloc, builder: (BuildContext context, Counter1State state) {  },
        // builder: (context, state) {
          // switch (state.runtimeType) {
          //   case Counter1IncrementState:
          //     final successState = state as Counter1IncrementState;
          //     return Center(
          //       child: Container(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(successState.val.toString(),
          //                 style: TextStyle(
          //                   fontSize: 60,
          //                 ))
          //           ],
          //         ),
          //       ),
          //     );

          //   default:
          //     Center(child: Text("Not Found"));
          // }
        },
      ),
    );
  }
}
