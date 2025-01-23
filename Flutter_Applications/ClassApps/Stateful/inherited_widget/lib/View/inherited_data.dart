import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:inherited_widget/Model/details.dart';


class InheritedData extends StatefulWidget {
  const InheritedData({super.key});



  @override
  State<InheritedData> createState() => _InheritedDataState();
}

class _InheritedDataState extends State<InheritedData> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    log(Details.of(context).email.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("Inherited Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Container(
         decoration: BoxDecoration(
                color: const Color.fromARGB(255, 152, 204, 247),
                borderRadius: BorderRadius.circular(10)
              ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
             mainAxisSize: MainAxisSize.min,
              children: [
                Text("Email:${Details.of(context).email}"),
                    
                 SizedBox(
                  height: 20,
                ),
                    
                Text("Password: ${Details.of(context).password}"),
                    
                    
              ],
            ),
          ),
        ),
      ),


      floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_right_alt),
            onPressed: () {
             setState(() {
               
             });
            }),

      
    );
  }
}