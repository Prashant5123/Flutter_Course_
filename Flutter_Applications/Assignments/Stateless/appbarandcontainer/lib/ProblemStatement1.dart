//Create an AppBar, add a title and add any 2 icons at the end of the appbar and give color to the AppBar
import "package:flutter/material.dart";

class Problemstatement1 extends StatelessWidget{
  const Problemstatement1({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text("AppBar"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          iconTheme:const IconThemeData(size: 5) ,
          leading:const Icon(Icons.arrow_back_ios_sharp,
                size: 25,
              ),
              
              actions:const [Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_ios_sharp,
                  size: 25,
                ),
              ),
              
              ],
        ),
      ),
    );
  }
}