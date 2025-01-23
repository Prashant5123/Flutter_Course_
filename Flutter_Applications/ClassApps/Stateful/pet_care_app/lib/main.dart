import "package:animated_splash_screen/animated_splash_screen.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:pet_care_app/login_screen.dart";
import "package:svg_flutter/svg.dart";


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Column(
          children: [
            SvgPicture.asset("assets/svg/petLogo.svg"),

            const SizedBox(
              height: 20,
            ),
            

            Text("PetGuardian",
              style: GoogleFonts.poppins(
                fontSize:32,
                fontWeight:FontWeight.w600,
                color: Colors.white
              ),
            ),

            const SizedBox(
              height: 10,
            ),


            Text('“Your Pets Lifelong Protector"',
              style: GoogleFonts.poppins(
                fontSize:16,
                fontWeight:FontWeight.w500,
                color: Colors.white
              ),
            )
          ],
        ), 
        splashIconSize: 300,
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),

        nextScreen: const LoginScreen()
        
      ),
    );
  }
}

