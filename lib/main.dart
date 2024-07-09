// ignore_for_file: prefer_const_constructors

// import 'package:fc_20_ranjith_bloc_project/features/home/bloc/ui/home1.dart';
// import 'package:fc_20_ranjith_bloc_project/features/home/bloc/ui/home2.dart';
// import 'package:fc_21_akshit_madan_bloc_listener_builder_consumer/features/ui/counter_page.dart';
import 'package:fc_21_akshit_madan_bloc_listener_builder_consumer/features/ui0/counter_page.dart';
import 'package:flutter/material.dart';

// import 'features/home/bloc/ui/home.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      home: CounterPage(),
    );
  }
}
