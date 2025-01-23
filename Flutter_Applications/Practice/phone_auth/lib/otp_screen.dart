import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: [
            Image.asset("assets/img1.png",
              width: 200,
              height: 200,
            ),
        
            const SizedBox(
                    height: 20,
                  ),
        
        
            const Text("Phone Verification",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
                    height: 10,
                  ),
        
        
            const Text("We need to register your phone number before getting started",
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
                
              
              ),
            ),
        
            const SizedBox(
                    height: 20,
                  ),
                
            const Pinput(
              length: 6,
              autofocus: true,
              
            ),
            const SizedBox(
                    height: 20,
                  ),
                
                
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                backgroundColor: const WidgetStatePropertyAll(Color.fromARGB(255, 7, 192, 106)),
                fixedSize: WidgetStatePropertyAll(Size.fromWidth(MediaQuery.of(context).size.width))
              ),
              onPressed:(){
                
              }, 
              child: const Text("Send the code",
                style: TextStyle(
                  color: Colors.white
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}