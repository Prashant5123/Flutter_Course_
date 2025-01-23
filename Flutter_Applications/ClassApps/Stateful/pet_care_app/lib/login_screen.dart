import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/home_screen.dart';
import 'package:svg_flutter/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Login",
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(245, 146, 69, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(child: SvgPicture.asset("assets/svg/petLogo2.svg")),
          const SizedBox(
            height: 20,
          ),

          Text(
            "Email",
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(194, 195, 204, 1),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          TextField(
            controller: emailController,
            
            decoration: InputDecoration(   
            
              hintText: "PetGuardian@gmail.com",
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight:FontWeight.w400,
                color: Color.fromRGBO(194, 195, 204, 1),
              ),          
              contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
              focusedBorder:OutlineInputBorder(
                 borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color.fromRGBO(245, 146, 69, 1))
              ) ,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                gapPadding: 4,
                borderSide: BorderSide(color: Color.fromRGBO(245, 146, 69, 1), 
                ),)
            ),

             
          ),

          const SizedBox(
            height: 20,
          ),


          Text(
            "Label",
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(194, 195, 204, 1),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          //password textfield

          TextField(
            controller: passwordController,
            obscureText: true,
            
            decoration: InputDecoration(   
            
              hintText: "******",
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight:FontWeight.w400,
                color: Color.fromRGBO(194, 195, 204, 1),
              ),          
              contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
              focusedBorder:OutlineInputBorder(
                 borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color.fromRGBO(245, 146, 69, 1))
              ) ,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                gapPadding: 4,
                borderSide: BorderSide(color: Color.fromRGBO(245, 146, 69, 1), 
                ),)
            ),

             
          ),


          const SizedBox(
            height: 10,
          ),

          Center(
            child: Text(
              "Forgot Password ? Click Here",
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(31, 32, 41, 1),
              ),
            ),
          ),


          const SizedBox(
            height: 10,
          ),


        //login button

          ElevatedButton(
          
            onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
            }, 

            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(245, 146, 69, 1)),
                  fixedSize: WidgetStatePropertyAll(Size.fromWidth(MediaQuery.of(context).size.width)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  
            ),
            child:Text(
              "LOGIN",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Divider(
            color: Color.fromRGBO(245, 146, 69, 1),
            thickness: 2,
          ),

          const SizedBox(
            height: 10,
          ),

          //login with email

          ElevatedButton(
          
            onPressed: (){

            }, 

            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(245, 146, 69, 1)),
                  fixedSize: WidgetStatePropertyAll(Size.fromWidth(MediaQuery.of(context).size.width)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  
            ),
            child:Text(
              "LOGIN WITH EMAIL",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),


          //LOGIN WITH FACEBOOK

          ElevatedButton(
          
            onPressed: (){

            }, 

            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(245, 146, 69, 1)),
                  fixedSize: WidgetStatePropertyAll(Size.fromWidth(MediaQuery.of(context).size.width)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                  
            ),
            child:Text(
              "LOGIN WITH FACEBOOK",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          Center(
            child: Text(
                "By continue you agree to our",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(31, 32, 41, 1),
                ),
              ),
          ),


           Center(
             child: Text(
                "Terms & Privacy Policy",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(31, 32, 41, 1),
                ),
              ),
           ),






        ],
      ),
    ));
  }
}
