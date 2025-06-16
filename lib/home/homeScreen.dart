
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(

      {super.key, required this.title}


      );
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: TextField(
                        onChanged: (value){
                          print(value);
                        },
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
                    ),

                  ],
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
                  height: 80,
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

            ]


        )

    );
  }
}
