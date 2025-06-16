import 'package:flutter/material.dart';
import "package:get/get.dart";

import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow[800]!),
      ),
      home: const LoginScreen(title: 'Hive App'),
      routes: {
        '/second': (context) => const HomeScreen(),
      },

    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});


  final String title;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary ,
        title: Text(
          textAlign: TextAlign.center,
          widget.title),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){ navigator?.pushNamed('/second'); },
            child: Hero(

              tag: 'hero-tag',
              child: Container(
                child:
                Image.asset("assets/images/logo.png",
                    height: 50,
                    fit: BoxFit.cover),
              ),
            ),
          )
        ]


      )

    );
  }
}
