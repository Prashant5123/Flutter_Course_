// 6. Create a screen in which add 10 colourful containers vertically and make the screen scrollable.

import 'package:flutter/material.dart';
class ProblemStatement6 extends StatelessWidget{
  const ProblemStatement6({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),

        body:  SingleChildScrollView(
          physics:const  BouncingScrollPhysics(decelerationRate:ScrollDecelerationRate.normal),
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
             
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  height: 200,
                  color: Colors.amber,
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  width: 300,
                  height: 200,
                  color: Colors.blue,
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  width: 300,
                  height: 200,
                  color: Colors.green,
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  width: 300,
                  height: 200,
                  color: Colors.red,
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  width: 300,
                  height: 200,
                  color: Colors.pink,
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  width: 300,
                  height: 200,
                  color: Colors.purpleAccent,
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  width: 300,
                  height: 200,
                  color: Colors.indigoAccent,
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  width: 300,
                  height: 200,
                  color: Colors.orangeAccent,
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  width: 300,
                  height: 200,
                  color: Colors.blueGrey,
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  width: 300,
                  height: 200,
                  color: Colors.lightGreenAccent,
                ),

                const SizedBox(
                  height: 30,
                ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}