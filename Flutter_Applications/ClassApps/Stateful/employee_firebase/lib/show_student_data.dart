import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ShowData extends StatefulWidget {
  const ShowData({super.key});

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {

  List showData=[];
  @override
  void initState(){
    super.initState();
    _fetchData();
  }

  _fetchData()async{
    QuerySnapshot response=await  FirebaseFirestore.instance.collection("StudentInfo").get();

     showData=response.docs;

     setState(() {
       
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Data"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: showData.length,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name: ${showData[index]["name"]}"),
                        
                  const SizedBox(
                  height: 20,
                ),
                        
                Text("College: ${showData[index]["college"]}"),
                        
                  const SizedBox(
                  height: 20,
                ),
                        
                Text("Name: ${showData[index]["courses"]}"),
                        
                 
                        
                        
                ],
              ),
            ),
          ),
        );
      },)
    );
  }
}