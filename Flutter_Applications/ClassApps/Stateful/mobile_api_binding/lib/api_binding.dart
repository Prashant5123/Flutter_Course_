import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:mobile_api_binding/delete_data.dart';
import 'package:mobile_api_binding/mobile_info.dart';
import 'package:mobile_api_binding/post_data.dart';
import 'package:mobile_api_binding/update_data.dart';

class ApiBinding extends StatefulWidget {
  const ApiBinding({super.key});

  @override
  State<ApiBinding> createState() => _ApiBindingState();
}

class _ApiBindingState extends State<ApiBinding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Binding",  style: TextStyle(
              
              fontWeight: FontWeight.w600

            ),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              //get data
              GestureDetector(
                onTap: getData,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(1, 4),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 106, 106, 106))
                      ]),
                  child: const Center(
                    child: Text(
                      "Get Data",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),

              //post data
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return PostData();
                  }));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(1, 4),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 106, 106, 106))
                      ]),
                  child: const Center(
                    child: Text(
                      "Post Data",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              //update data
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return UpdateData();
                  }));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(1, 4),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 106, 106, 106))
                      ]),
                  child: const Center(
                    child: Text(
                      "Update Data",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),

              //delete data
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return DeleteData();
                  }));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(1, 4),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 106, 106, 106))
                      ]),
                  child: const Center(
                    child: Text(
                      "Delete Data",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void getData() async {
    Uri url = Uri.parse("https://api.restful-api.dev/objects");
    http.Response data = await http.get(url);

    List<dynamic> jsonData = json.decode(data.body);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MobileInfo(jsonData: jsonData);
    }));
  }
}
