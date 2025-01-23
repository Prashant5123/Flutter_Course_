//Create 2 containers in the centre of the screen and give that color to the containers
import 'package:flutter/material.dart';


class ProblemStatement4 extends StatelessWidget{
  const ProblemStatement4({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Core2web"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),

        body:  Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                width: 360,
                height: 200,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}