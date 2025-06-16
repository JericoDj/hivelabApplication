import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key, this.city});

  final city;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    final city = widget.city;
    final title = "Weather Data";

    if (city == null) {
      city == "Taguig City";
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary ,
        title: Align(
          alignment: Alignment.center,
          child: Text(
              textAlign: TextAlign.center,
              title),
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

              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.yellow[800],
                borderRadius: BorderRadius.circular(10),
              ),
                child: Text(
                    style: TextStyle(
                      color: Colors.white
                    ),
                    "Check different city")
            ),
          ),




          const SizedBox(height: 20),
           Container(
             width: 300,
             child: Text(
               textAlign: TextAlign.center,
              "Here's the data for the ${widget.city} weather for today!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                       ),
           ),

        ],
      ),
    );
  }
}
