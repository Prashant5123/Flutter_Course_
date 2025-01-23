import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController firstNameController=TextEditingController();
   TextEditingController lastNameController=TextEditingController();
    TextEditingController collegeController=TextEditingController();
     TextEditingController emailController=TextEditingController();
      TextEditingController passwordController=TextEditingController();

  FirebaseAuth _firebaseAuth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
        
              //firstname
              TextField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Your First Name"
                  ),
                ),
          
                const SizedBox(
                  height: 20,
                ),
        
                //lastname
                TextField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Your Last Name"
                  ),
                ),
          
                const SizedBox(
                  height: 20,
                ),
        
                  //college
                TextField(
                  controller: collegeController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Your College Name"
                  ),
                ),
          
                const SizedBox(
                  height: 20,
                ),
        
                //gmail
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Your Number"
                  ),
                ),
        
                const SizedBox(
                  height: 20,
                ),
        
                //password
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
        
        
               
        
              ElevatedButton(
                style: ButtonStyle(fixedSize:WidgetStatePropertyAll(Size.fromWidth(MediaQuery.of(context).size.width-40)),backgroundColor:const WidgetStatePropertyAll(Colors.blue) ),
                onPressed: ()async{
                  if(firstNameController.text.trim().isNotEmpty && lastNameController.text.trim().isNotEmpty && collegeController.text.trim().isNotEmpty && emailController.text.trim().isNotEmpty && passwordController.text.trim().isNotEmpty){
                    Map<String,dynamic> data={
                      "firstName":firstNameController.text,
                      "lastName":lastNameController.text,
                      "college":collegeController.text,
                      "email":emailController.text
                    };
        
                    try{
                    
        
                    UserCredential userCredential= await _firebaseAuth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
                  //  FirebaseFirestore.instance.collection("StudentDetail").add(data);
        
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Succesfully Register!!!")));
        
                    Navigator.of(context).pop();
        
                  }on FirebaseAuthException catch (error){
                    log(error.code);
                    log(error.message!);
                     ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text("${error.message!}")));
                    
                  }
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Enter Valid Data")));
        
                  }
        
                },
                 child: const Text("Register")
              ),
          
                
            ],
          ),
        ),
      ),
    );
  }
}