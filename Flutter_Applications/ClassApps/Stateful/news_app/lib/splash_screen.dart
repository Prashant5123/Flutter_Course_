import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/home_screen.dart';
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

  Map newsData={};
  String date="";
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  

 DateTime now= DateTime.now();
        

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    date=DateFormat("EEE d MMMM, yyyy").format(now);

getData();
    Future.delayed(Duration(seconds: 3),()=>{
      Navigator.push(context,MaterialPageRoute(builder:(context) {
        return HomeScreen();
      },))
    });
  }

  
  void getData()async{

    try{
      Uri url=Uri.parse("https://newsdata.io/api/1/latest?apikey=pub_65602d0be076cdba2fa32938ade0fc7a7df05&language=en&country=in");
      http.Response response= await http.get(url);
      newsData=await json.decode(response.body);

     
     
    }catch (er){
      log("error");
      log(er.toString());
     
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset("assets/image.png"), 
        splashIconSize: 130,
        duration:3000,
        nextScreen: HomeScreen()
      ),
    );
  }
}