import 'package:flutter/material.dart';


class CustomSnackbar{
  static showCustomSnackBAr({required BuildContext context, required String message}){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)));
  }
}