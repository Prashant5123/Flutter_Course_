import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Space Parameters"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          
            children: [
              Container(
                height:200,
                width:200,
                color: Colors.red,
              ),

              Container(
                height:200,
                width:200,
                color: Colors.green,
              ),

              Container(
                height:200,
                width:200,
                color: Colors.blue,
              ),
            ],),
        ),
      ),
    );
  }
}
