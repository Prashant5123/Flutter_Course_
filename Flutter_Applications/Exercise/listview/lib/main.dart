import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("ListView Demo"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: ListView(
          children: [
            Image.network("https://gaadiwaadi.com/wp-content/uploads/2022/03/Charge-Cars-1967-Ford-Mustang-EV-img1.jpg"),
            const Icon(Icons.favorite,
            color: Colors.red,
            ),
            const Text("GT Mustang"),

            Image.network("https://gaadiwaadi.com/wp-content/uploads/2022/03/Charge-Cars-1967-Ford-Mustang-EV-img1.jpg"),
            const Icon(Icons.favorite,
            color: Colors.red,
            ),
            const Text("GT Mustang"),

            Image.network("https://gaadiwaadi.com/wp-content/uploads/2022/03/Charge-Cars-1967-Ford-Mustang-EV-img1.jpg"),
            const Icon(Icons.favorite,
            color: Colors.red,
            ),
            const Text("GT Mustang"),

            GestureDetector(
              onTap: (){
                print("Button Pressed");
              },

              child: Container(
                height: 50,
                width:10,
                color: Colors.amber,
                child: const Text("Prss Me"),
              ),
            ),
          ],
          
        ),
      ),
    );
  }
}