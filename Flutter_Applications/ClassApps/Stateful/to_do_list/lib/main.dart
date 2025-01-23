import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'color.dart';
import 'todomodel.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => _ToDoListState();
}

class _ToDoListState extends State {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<TodoModel> todoCards = [
    TodoModel(
        title: "Flutter",
        description: "Dart, Stateful, Stateless, Widget",
        date: "18 October 2024"),
    TodoModel(
        title: "Java",
        description: "Opps, Exception, Multithreading",
        date: "19 October 2024"),
    TodoModel(
        title: "Python", description: "Opps, tuple", date: "20 October 2024"),
  ];

  void clearTextField() {
    titleController.clear();
    dateController.clear();
    descriptionController.clear();
  }

  void submitData(bool isEdit, [TodoModel? toDoObj]) {
    if (titleController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty) {
      if (isEdit) {
        toDoObj!.title=titleController.text;
        toDoObj.description=descriptionController.text;
        toDoObj.date=dateController.text;
        


      } else {
        todoCards.add(TodoModel(
          title: titleController.text,
          description: descriptionController.text,
          date: dateController.text,
        ));
      }
    }

    Navigator.of(context).pop();
    clearTextField();

    setState(() {});
  }

  void showBottomSheet(bool isEdit, [TodoModel? toDoObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create To-Do",
                          style: GoogleFonts.quicksand(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  TextField(
                      maxLines: null,
                      controller: titleController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          border: OutlineInputBorder())),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  TextField(
                      controller: descriptionController,
                      maxLines: null,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          border: OutlineInputBorder())),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  TextField(
                      controller: dateController,
                      onTap: () async {
                        DateTime? date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2030));

                        String formatedDate = DateFormat.yMMMd().format(date!);

                        dateController.text = formatedDate;

                        setState(() {});
                      },
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            child: const Icon(Icons.calendar_month_outlined),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          border: const OutlineInputBorder())),
                  const SizedBox(
                    height: 15,
                  ),

                  //submit button
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        if(isEdit){
                          submitData(true,toDoObj);
                        }else{
                          submitData(false);
                        }
                        
                        
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Submit",
                            style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-do list",
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: todoCards.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: colorPicker().setColor[index % 4],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                        child: Container(
                                      child:
                                          SvgPicture.asset("assets/svg/gallery.svg"),
                                    )),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            todoCards[index].title,
                                            style: GoogleFonts.quicksand(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            todoCards[index].description,
                                            style: GoogleFonts.quicksand(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    todoCards[index].date,
                                    style: GoogleFonts.quicksand(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(132, 132, 132, 1),
                                    ),
                                  ),
                                  const Spacer(),
            
                                  //Edit button
                                  GestureDetector(
                                    onTap: () {
                                      titleController.text = todoCards[index].title;
                                      descriptionController.text =
                                          todoCards[index].description;
                                      dateController.text = todoCards[index].date;
                                      showBottomSheet(true, todoCards[index]);
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/edit.svg",
                                      height: 16,
                                      width: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
            
                                  //Delete button
                                  GestureDetector(
                                    onTap: () {
                                    
                                      todoCards.removeAt(index);
                                      setState(() {});
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/delete.svg",
                                      height: 16,
                                      width: 16,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
            
                        
                      ],
                    ),
                  );
                }),
          ),
      
              const SizedBox(
                    height: 20,
                  ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clearTextField();
          showBottomSheet(false);
        },
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
