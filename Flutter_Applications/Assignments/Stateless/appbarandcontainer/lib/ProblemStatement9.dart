import "package:flutter/material.dart";

class Problemstatement9 extends StatelessWidget{

  const Problemstatement9({super.key});
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
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    ),
   );
  }
}