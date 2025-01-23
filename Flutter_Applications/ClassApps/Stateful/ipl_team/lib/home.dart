import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ipl_team/teams.dart';

Map playerData = {};

class IplTeams extends StatefulWidget {
  const IplTeams({super.key});

  @override
  State<IplTeams> createState() => _IplTeamsState();
}

class _IplTeamsState extends State<IplTeams> {
  XFile? selectedFile;

  bool isClicked = false;

  List<String> teamsList = [
    "CSK",
    "MI",
    "RCB",
    "SRH",
    "DC",
    "LSG",
    "PK",
    "KKR",
    "RR",
    "GT"
  ];
  String? selectedValue;

  TextEditingController nameController = TextEditingController();
  TextEditingController jerNoController = TextEditingController();
  TextEditingController teamController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 221, 243),
      appBar: AppBar(
        title: const Text("IPL"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 238, 51, 51),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),

              Center(
                child: GestureDetector(
                  onTap: () async {
                    ImagePicker imagePicker = ImagePicker();
                    selectedFile = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    setState(() {});
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    child: (selectedFile == null)
                        ? Image.asset("assets/png/avtar.png")
                        : Image.file(
                            File(selectedFile!.path),
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //name textfield

              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter Player Name",
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //jersy textfield

              TextField(
                controller: jerNoController,
                decoration: InputDecoration(
                  hintText: "Enter Jersey Number",
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //team textfield

              DropdownButtonFormField(
                  decoration: InputDecoration(
                
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black)),
                  ),
                  hint:const Text("Select Team"),
                  value:selectedValue,
                  items: [
                    for (String item in teamsList)
                      DropdownMenuItem(value: item, child: Text(item))
                  ],
                  onChanged: (String? value){
                    setState(() {
                      selectedValue=value!;
                      log(selectedValue!);
                    });
                    

                  }
                  
                ),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //add data button
                  ElevatedButton(
                      onPressed: () async {
                        if (nameController.text.trim().isNotEmpty &&
                            jerNoController.text.trim().isNotEmpty &&
                            selectedValue!=null &&
                            selectedFile != null) {

                              log(selectedValue!);
                          setState(() {
                            isClicked = true;
                          });
                          DateTime now = DateTime.now();
                          await FirebaseStorage.instance
                              .ref()
                              .child("${now}_${nameController.text}")
                              .putFile(File(selectedFile!.path));
                          String url = await FirebaseStorage.instance
                              .ref()
                              .child("${now}_${nameController.text}")
                              .getDownloadURL();

                          Map<String, dynamic> data = {
                            "name": nameController.text,
                            "jerNum": jerNoController.text,
                            "team": selectedValue,
                            "url": url
                          };
                          await FirebaseFirestore.instance
                              .collection("IplTeams")
                              .add(data);

                          nameController.clear();
                          jerNoController.clear();
                          setState(() {
                            selectedValue=null;
                          selectedFile = null;
                          isClicked = false;
                          });
                          

                         
                        }
                      },
                      style: const ButtonStyle(
                          textStyle: WidgetStatePropertyAll(TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))
                          //shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                          // backgroundColor:WidgetStatePropertyAll(Colors.blue)
                          ),
                      child: isClicked
                          ? const CircularProgressIndicator()
                          : const Text("Add Data")),

                  ElevatedButton(
                      onPressed: () async {
                       
                        playerData = {};
                        QuerySnapshot response = await FirebaseFirestore
                            .instance
                            .collection("IplTeams")
                            .get();

                        for (dynamic val in response.docs) {
                          String team = val.data()["team"];

                          if (!playerData.containsKey(team)) {
                            playerData[team] = [];
                          }

                          playerData[team].add(val);
                        }

                        nameController.clear();
                          jerNoController.clear();
                          setState(() {
                            selectedValue=null;
                            selectedFile = null;
                          });

                       

                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const Teams()));
                      },
                      style: const ButtonStyle(
                          textStyle: WidgetStatePropertyAll(TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))
                          //shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                          // backgroundColor:WidgetStatePropertyAll(Colors.blue)
                          ),
                      child: const Text("Get Data")),
                ],
              ),

              // DropdownButton(
              //     value: selectedValue,
              //     icon: Icon(Icons.arrow_drop_down),
              //     elevation: 16,
              //     items:
              //         teamsList.map<DropdownMenuItem<String>>((String value) {
              //       return DropdownMenuItem<String>(
              //         value: value,
              //         child: Text(value),
              //       );
              //     }).toList(),
              //     onChanged: (String? newvalue) {
              //       setState(() {
              //         selectedValue = newvalue!;
              //       });
              //     }),

              
            ],
          ),
        ),
      ),
    );
  }
}
