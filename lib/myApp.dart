import 'package:flutter/material.dart';

import 'home/calculateScreen.dart';
import 'home/homeScreen.dart';
import 'main.dart';

class MyApp extends StatelessWidget {

  final TextEditingController earningController = TextEditingController();
  final TextEditingController dailyGoalController = TextEditingController();
  final TextEditingController monthlyGoalController = TextEditingController();


  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final city = "Taguig City";
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow[800]!),
      ),
      home: const HomeScreen(title: 'Hive App'),
      routes: {
        '/second': (context) => CalculateScreen(),
      },

    );
  }
}