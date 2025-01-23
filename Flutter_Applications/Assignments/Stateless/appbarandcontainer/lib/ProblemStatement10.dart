import "package:flutter/material.dart";

class Problemstatement10 extends StatelessWidget{

  const Problemstatement10({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(color: Colors.red),
            borderRadius:const  BorderRadius.only(topLeft:Radius.circular(20),bottomRight: Radius.circular(20)),
          ),
        ),
      ),
    ),
   );
  }
}