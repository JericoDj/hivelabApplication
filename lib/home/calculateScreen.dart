import "package:flutter/material.dart";

class CalculateScreen extends StatefulWidget {

  const CalculateScreen({super.key, });



  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {



  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary ,
        title: Align(
          alignment: Alignment.center,
          child: Text(
          "Calculated Percentage"
              ,textAlign: TextAlign.center,
        ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
                },
              child: Hero(
                tag: 'hero-tag',
                child: Container(
                  width: 300,
                  height: 450,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                  ),
                  child: Image(image: Image.asset("assets/images/logo.png").image, fit: BoxFit.cover)
                ),
              ),
            ),
          ),



          GestureDetector(
            onTap: () {
              Navigator.pop(context);
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




          const SizedBox(height: 20),
           Container(
             width: 300,
             child: Text(
               textAlign: TextAlign.center,
              "Here's the data for the  weather for today!",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
             ),
           ),

        ],
      ),
    );
  }
}
