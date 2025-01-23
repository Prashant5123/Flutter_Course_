import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
   
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("ListView Builder"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          itemCount:30,
          itemBuilder: (BuildContext context,int index){
            return Column(
              children: [
                Text("Index$index",
                  style: const TextStyle(
                    fontSize: 20
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
