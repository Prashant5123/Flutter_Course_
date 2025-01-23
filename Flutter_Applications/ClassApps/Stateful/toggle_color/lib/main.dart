import "package:flutter/material.dart";

void main(){
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget{
  const ToggleColor({super.key});

  @override
  State createState()=> _ToggleColorState();
}

class _ToggleColorState extends State{
  bool changeColor=true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle Color"),
          centerTitle: true,
          backgroundColor: changeColor?Colors.blue:Colors.yellow,
        ),

        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: changeColor? Colors.red:Colors.black,
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
              if(changeColor==true){
                changeColor=false;
              }else{
                changeColor=true;
              }
              setState(() {
                
              });
          },

          child:const Text("Toggle"),
        ),
      ),
    );
  }
}