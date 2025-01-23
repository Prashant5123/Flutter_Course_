
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ipl_team/home.dart';
import 'package:ipl_team/pr.dart';
import 'package:ipl_team/session_dart.dart';



class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State createState()=> _LoginScreen();
}

class _LoginScreen extends State{

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  //TextEditingController gmailController=TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginScreen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),


      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(
              height: 100,
             ),


            //gmail textfield
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Your Gmail"
              ),
            ),

            const SizedBox(
              height: 20,
            ),


             //password textfield
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Your Password"
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: const Text("Already have an account?"),
            ),

            ElevatedButton(
              style: ButtonStyle(fixedSize:WidgetStatePropertyAll(Size.fromWidth(MediaQuery.of(context).size.width-40)),backgroundColor:const WidgetStatePropertyAll(Colors.blue) ),
              onPressed: ()async{
                if(emailController.text.trim().isNotEmpty && passwordController.text.trim().isNotEmpty){
                  try{
                    await _firebaseAuth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);

                    await SessionData.storesSessionData(loginData: true, emailId: emailController.text);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>IplTeams()));

                    
                  }on FirebaseAuthException catch (error){
                     ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text("${error.message}")));
                  }
                }

              },
               child: const Text("Login")
            ),


            const SizedBox(
              height: 20,
            ),

            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: const Text("Don't have an account?"),
            ),

            ElevatedButton(
              style: ButtonStyle(fixedSize:WidgetStatePropertyAll(Size.fromWidth(MediaQuery.of(context).size.width-40)),backgroundColor:const WidgetStatePropertyAll(Colors.blue)  ),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(context)=> const PhoneAuthScreen()));
              },
               child: const Text("Sign Up")
            ),
          ],
        ),
      ),
    );
  }
}