import 'package:flutter/material.dart';

class Aspectratio extends StatelessWidget{
  const Aspectratio({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aspect Ratio"),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),

        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
            child: Image.network("https://th.bing.com/th/id/OIG3.LF0j5JICj4qbfqQ_Oudn"),
          ),
        ),
      ),
    );
  }
  
 
}