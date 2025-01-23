import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirebaseEmployee(),
    );
  }
}

class FirebaseEmployee extends StatefulWidget {
  const FirebaseEmployee({super.key});

  @override
  State<FirebaseEmployee> createState() => _FirebaseEmployeeState();
}

class _FirebaseEmployeeState extends State<FirebaseEmployee> {
  bool visible = false;

  Map max = {"devType": null, "empName": null, "empSal": 0.0};
  TextEditingController empNameController = TextEditingController();
  TextEditingController empSalController = TextEditingController();
  TextEditingController devTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Employee"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              controller: empNameController,
              decoration: const InputDecoration(
                hintText: "Enter Employee Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: empSalController,
              decoration: const InputDecoration(
                hintText: "Enter Employee Salary",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: devTypeController,
              decoration: const InputDecoration(
                hintText: "Enter Employee Dev Type",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                if (empNameController.text.trim().isNotEmpty &&
                    empSalController.text.trim().isNotEmpty &&
                    devTypeController.text.trim().isNotEmpty) {
                  Map<String, dynamic> data = {
                    "empName": empNameController.text,
                    "empSal": empSalController.text,
                    "devType": devTypeController.text
                  };
                  FirebaseFirestore.instance
                      .collection("EmployeeData")
                      .add(data);

                  empNameController.clear();
                  empSalController.clear();
                  devTypeController.clear();
                }
              },
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  "Add Data",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                QuerySnapshot response = await FirebaseFirestore.instance
                    .collection("EmployeeData")
                    .get();

                for (dynamic val in response.docs) {
                  double maxdata = double.parse(val.data()["empSal"]);

                  if (max["empSal"] < maxdata) {
                    max = {
                      "devType": val.data()["devType"],
                      "empName": val.data()["empName"],
                      "empSal": maxdata
                    };
                  }
                }
                setState(() {
                  visible = true;
                });
              },
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  "Get Data",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Visibility(
              visible: visible,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Employee Name: ${max["empName"]}",
                        style:
                            const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Employee Salary: ${max["empSal"]}",
                        style:
                            const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Devloper Type: ${max["devType"]}",
                        style:
                            const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
