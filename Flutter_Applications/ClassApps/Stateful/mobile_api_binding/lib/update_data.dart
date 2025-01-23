import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class UpdateData extends StatelessWidget {
  UpdateData({super.key});
  TextEditingController nameController=TextEditingController();
  TextEditingController priceController=TextEditingController();
  TextEditingController colorController=TextEditingController();
  TextEditingController idController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Data",
          style: TextStyle(
              
              fontWeight: FontWeight.w600

            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200]
      ),

      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                      
                ),
              ),
            ),
            TextField(
              controller:nameController ,
              decoration: InputDecoration(
                hintText: "Enter Device name",
                hintStyle: TextStyle(
                  
              
              fontWeight: FontWeight.w600

          
                ),
                border: OutlineInputBorder()
              ),
            ),


             const SizedBox(
              height: 20,
            ),

            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("Id",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                      
                ),
              ),
            ),
            TextField(
              controller:idController ,
              decoration: InputDecoration(
                hintText: "Enter Device id",
                hintStyle: TextStyle(
                  
              
              fontWeight: FontWeight.w600

          
                ),
                border: OutlineInputBorder()
              ),
            ),


             const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("Price",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                      
                ),
              ),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                hintText: "Enter Device price",
                hintStyle: TextStyle(
                  
              
              fontWeight: FontWeight.w600

          
                ),
                border: OutlineInputBorder()
              ),
            ),

             const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("Color",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                      
                ),
              ),
            ),
            TextField(
              controller: colorController,
              decoration: InputDecoration(
                hintText: "Enter Color of Device",
                hintStyle: TextStyle(
                  
              
              fontWeight: FontWeight.w600

          
                ),
                border: OutlineInputBorder()
              ),
            ),


             const SizedBox(
              height: 20,
            ),

            Center(
              child: GestureDetector(
                onTap: ()async{
                  if(nameController.text.trim().isNotEmpty && priceController.text.trim().isNotEmpty && colorController.text.trim().isNotEmpty && idController.text.trim().isNotEmpty){
                    Map updateData={

                      "name":nameController.text,
                      "data":{
                        "price":priceController.text,
                        "color":colorController.text,
                      }
                    };

                    Uri url=Uri.parse("https://api.restful-api.dev/objects/${idController.text}");
                      
                    http.Response response= await http.put(url,body: json.encode(updateData),headers:{'Content-Type': 'application/json'} );
                    log(response.body);
                    log("${response.statusCode}");

                    if(response.statusCode==200){ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Data Updated Successfully")));}
                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                    
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please enter valid data")));
                  }
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Center(
                    child: Text("Submit",
                      style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
                
                            ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}