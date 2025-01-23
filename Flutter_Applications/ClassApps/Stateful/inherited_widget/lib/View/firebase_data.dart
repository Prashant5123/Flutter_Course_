import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget/Model/details.dart';
import 'package:inherited_widget/View/inherited_data.dart';

// class DetailsData extends StatelessWidget {
//   final String email;
//   final String password;
//   const DetailsData({
//     super.key,
//     required this.email,
//     required this.password,
//   });
//   @override
//   Widget build(BuildContext context) {
//     log("Email: $email");
//     log("Pass:$password");
//     return Details(
//       email: email,
//       password: password,
//       child: FirebaseData(),
//     );
//   }
// }

class FirebaseData extends StatefulWidget {
  const FirebaseData({super.key});

  @override
  State<FirebaseData> createState() => _FirebaseDataState();
}

class _FirebaseDataState extends State<FirebaseData> {
  List data = [];
  @override
  void initState() {
    super.initState();

    _getData();
  }

  void _getData() async {
    QuerySnapshot response =
        await FirebaseFirestore.instance.collection("userData").get();

    data = response.docs;

    log('---------------------${Details.of(context).email}');

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Inherited Widget"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 152, 204, 247),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email: ${data[index]["email"]}"),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Password: ${data[index]["password"]}")
                      ],
                    ),
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_right_alt),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => InheritedData(),
                ),
              );
            }),
      
    );
  }
}
