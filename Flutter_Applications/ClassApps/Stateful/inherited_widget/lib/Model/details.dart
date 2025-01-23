import 'package:flutter/material.dart';

class Details extends InheritedWidget {
  String email;
  String password;

   Details(
      {super.key,
      required this.email,
      required this.password,
      required super.child});


  static Details of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<Details>()!;
  }
  
  @override
  bool updateShouldNotify(Details oldWidget) {
    return email!=oldWidget.email && password!=oldWidget.password;
  }

  
 
}
