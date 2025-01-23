
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_advanced/card_model.dart';
import 'package:to_do_advanced/main.dart';



class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDo(),
    );
  }
}

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  int? index1;
  
  void submitData(){
    if(titleController.text.trim().isNotEmpty && descriptionController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty){
      
      insertData(CardModel(title:titleController.text, description: descriptionController.text, date: dateController.text));
    print("Data inserted");
        setState(() {
          
        });
    }else{
      print("Not inserted");
    }
    setState(() {
      
    });
    Navigator.pop(context);
  }
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController dateController=TextEditingController();
  void bottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
        context:context,
        builder: (context) {
          return  Padding(
            
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text("Create To-Do ",
                      style: GoogleFonts.quicksand(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      
                    ),
                    ),
                  ),
                ),
                Text("Title",
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:  const Color.fromRGBO(111, 81, 255, 1),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: titleController,
                      decoration:const  InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(111, 81, 255, 1),
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(111, 81, 255, 1),
                          )))),
                ),


                Text("Description",
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:  const Color.fromRGBO(111, 81, 255, 1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: descriptionController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(111, 81, 255, 1),
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(111, 81, 255, 1),
                          )))),
                ),


                Text("Date",
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:  const Color.fromRGBO(111, 81, 255, 1),
                  ),
                ),
                //Date textfield
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: dateController,
                      onTap: ()async{
                        DateTime? date=await showDatePicker(context: context, firstDate: DateTime(2020), lastDate: DateTime(2030));

                        String formatedDate=DateFormat.yMMMEd().format(date!);

                        dateController.text=formatedDate;
                      },
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.calendar_month_outlined),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(111, 81, 255, 1),
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(111, 81, 255, 1),
                          )))),
                ),


                Center(
                  child: GestureDetector(
                    onTap:(){
                      submitData();
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(111, 81, 255, 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    
                      child: Center(
                        child: Text("Submit",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30),
            child: Text(
              "Good morning",
              style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Pathum",
              style: GoogleFonts.quicksand(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            "CREATE TO DO LIST",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40))),
                          child: Column(
                            children: [
                              const SizedBox(height: 40),
                              Expanded(
                                child: SlidableAutoCloseBehavior(
                                  child: ListView.builder(
                                      itemCount: data.length,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return Slidable(
                                          endActionPane: ActionPane(
                                              motion: const ScrollMotion(),
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.symmetric(
                                                              horizontal: 20),
                                                      height: 32,
                                                      width: 32,
                                                      decoration: const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color.fromRGBO(
                                                            111, 81, 255, 1),
                                                      ),
                                                      child: const Icon(
                                                        Icons.edit_outlined,
                                                        color: Colors.white,
                                                        size: 20,
                                                      ),
                                                    ),


                                                    //delete button
                                                    GestureDetector(
                                                      onTap: ()async{
                                                        print("hiiiiiiiiiiiiiiiii");
                                                       await deleteData(index);
                                                       setState(() {
                                                         
                                                       });
                                                      },
                                                      child: Container(
                                                          margin: const EdgeInsets
                                                              .symmetric(
                                                              horizontal: 20),
                                                          height: 32,
                                                          width: 32,
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            color: Color.fromRGBO(
                                                                111, 81, 255, 1),
                                                          ),
                                                          child: const Icon(
                                                            Icons
                                                                .delete_outline_rounded,
                                                            color: Colors.white,
                                                            size: 20,
                                                          )),
                                                    )
                                                  ],
                                                )
                                              ]),
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 20),
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      Color.fromRGBO(0, 0, 0, 0.16),
                                                  offset: Offset(0, 4),
                                                  blurRadius: 12,
                                                )
                                              ],
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.all(15),
                                                  height: 52,
                                                  width: 52,
                                                  decoration: const BoxDecoration(
                                                      color: Color.fromRGBO(
                                                          217, 217, 217, 1),
                                                      shape: BoxShape.circle),
                                                  child: Center(
                                                    child: SvgPicture.asset(
                                                        "assets/svg/gallerywhite.svg"),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      //title
                                                      Text(
                                                        data[index]['title'],
                                                        style: GoogleFonts.inter(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(vertical: 5),
                                                        child: Text(
                                                          data[index]['description'],
                                                          style: GoogleFonts.inter(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                const Color.fromRGBO(
                                                                    0, 0, 0, 0.7),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        data[index]['date'],
                                                        style: GoogleFonts.inter(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w600,
                                                          color: const Color.fromRGBO(
                                                              0, 0, 0, 0.7),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomSheet();
        },
        backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        shape: const CircleBorder(eccentricity: 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
