import 'package:flutter/material.dart';


// ignore: must_be_immutable
class DeviceInfo extends StatelessWidget {
  int index;
  List<dynamic> jsonData;
  List mobileUrl;
  DeviceInfo({super.key,required this.index,required this.jsonData,required this.mobileUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Device Info",  style: TextStyle(
              
              fontWeight: FontWeight.w600

            ),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200]
      ),

    body: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
       
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 250,
            width: 250,
            child: Image.network(mobileUrl[index]),
          ),

          const SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
          Text("Name: ${jsonData[index]["name"]}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600

            ),
          ),

          (jsonData[index]["data"]==null)?const SizedBox():Container(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          (jsonData[index]["data"]["color"]==null)? const SizedBox():Text("Color: ${jsonData[index]["data"]["color"]}",style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600

            ),),
          (jsonData[index]["data"]["price"]==null)? const SizedBox():Text("Price: ${jsonData[index]["data"]["price"]}",style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600

            ),),
          (jsonData[index]["data"]["generation"]==null)? const SizedBox():Text("Generation: ${jsonData[index]["data"]["generation"]}",style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600

            ),),
          (jsonData[index]["data"]["capacity"]==null)? const SizedBox():Text("Capacity: ${jsonData[index]["data"]["capacity"]}",style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600

            ),)
      ],),),
              ]
            )
          )
        ],
      ),
    ),
    );
  }
}