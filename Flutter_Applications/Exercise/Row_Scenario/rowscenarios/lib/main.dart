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
          title: Text("Row Scenarios"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height:200,
                width:200,
                color: Colors.amber,
              ),
            ],),
        ),
      ),
    );
  }
}
