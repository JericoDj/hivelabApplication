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
  const LoginScreen(

      {super.key, required this.title}


      );


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
        title: Align(
          alignment: Alignment.center,
          child: Text(
            textAlign: TextAlign.center,
            widget.title),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {

                Navigator.pushNamed(context, '/second');
                print("pressed");
              },
              child: Hero(

                tag: 'hero-tag',
                child: Container(
                  child:
                  Image.asset("assets/images/logo.png",
                      height: 200,
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Container(
            child: Text("Welcome to Hive App",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow[800]

              )
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/second");
            },

            child: Container(
              decoration: BoxDecoration(

                border: Border.all(
                  color: Colors.yellow[800]!,
                  width: 2
                ),
                color: Colors.yellow[800],
                borderRadius: BorderRadius.circular(10),
              ),
              height: 100,
              width: 200,

              child: Center(
                  child: Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                      "Check Weather"),
              ),),
          ),
          SizedBox(height: 20,),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellow[800]!,
                width: 2
              ),

              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Icon(Icons.cloud, color: Colors.yellow[800], size: 30),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(

                    border: OutlineInputBorder(


                    ),
                    labelText: 'Enter City',
                    counterStyle: context.textTheme.bodySmall,
                    labelStyle: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                    hintText: 'e.g. New York',
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 20,),

        ]


      )

    );
  }
}
