import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState()=> _MyAppState();
}

class _MyAppState extends State{
  bool change=true;
  Color toggle(){
    if(change==true){
      return Colors.blue;
    }else{
      return Colors.amber;
    }
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle Appbar"),
          centerTitle: true,
          backgroundColor:toggle(),
        ), 

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(change==true){
              change=false;
            }else{
              change=true;
            }  
            setState(() {
              
            });          
          },
         
          backgroundColor: Colors.blue,
           child: const Text("Toggle"),
        ),
      ),
    );
  }
}

