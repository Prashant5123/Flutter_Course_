//Create an AppBar, give an Icon at the end of the app bar, and give a title in the middle of the appbar

import 'package:flutter/material.dart';

class ProblemStatement2 extends StatelessWidget{
  const ProblemStatement2({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
          centerTitle: true,
          backgroundColor: Colors.blue,

          actions:const  [
            Padding(
              padding: EdgeInsets.only(right: 10,top: 10),
              child: Icon(Icons.favorite,
              size: 30,
              color: Colors.red,
              
              ),
            )
          ],
        ),
      ),
    );
  }
}