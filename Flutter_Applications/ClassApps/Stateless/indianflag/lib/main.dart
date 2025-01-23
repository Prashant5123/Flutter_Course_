import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                height: 500,
                width: 10,
                color: Colors.brown,
              ),
              Column(
                children: [
                    Container(
                      height: 35,
                      width: 200,
                      color: Colors.orange,
                     ),
                    Container(
                      height: 35,
                      width: 200,
                      color: Colors.white,
                      child: Image.network("https://static.vecteezy.com/system/resources/previews/019/136/455/original/ashok-chakra-logo-ashok-chakra-free-free-vector.jpg"),
                    ),
                    Container(
                      height: 35,
                      width: 200,
                      color: Colors.green,
                    ),
                ],
                
              ),
            ],),
            
           Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Container(
                    width:100,
                    height: 25,
                    color: Colors.amber,
                  ),
                  Container(
                    width:150,
                    height: 25,
                    color: Colors.amber,
                  ),
                  Container(
                    width:200, 
                    height: 25,
                    color: Colors.amber,
                  ),
                ],
              ),
            ],
           ),
          ],
        ),
      ),
    );
  }
}
