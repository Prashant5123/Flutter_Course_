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
          title: const Text("Scroll"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        
          child: Column(
        
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.network("https://img.freepik.com/free-photo/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.jpg"),
              const SizedBox(
                height: 30,
              ),
              Image.network("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg"),
              const SizedBox(
                height: 30,
              ),
              Image.network("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg"),
              const SizedBox(
                height: 30,
              ),
              Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
              const SizedBox(
                height: 30,
              ),
              Image.network("https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
