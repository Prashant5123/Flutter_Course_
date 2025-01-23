import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
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
            Image.asset(
              "assets/img1.png",
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Phone Verification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "We need to register your phone number before getting started",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Pinput(
              length: 6,
              autofocus: true,
              onCompleted: (value) async {
                LoginController controller = LoginController();
                if (await controller.signInWithOtp()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Successful')));
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                    backgroundColor: const WidgetStatePropertyAll(
                        Color.fromARGB(255, 7, 192, 106)),
                    fixedSize: WidgetStatePropertyAll(
                        Size.fromWidth(MediaQuery.of(context).size.width))),
                onPressed: () {},
                child: const Text(
                  "Send the code",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}

class LoginController {
  String verificationId = '';
  String phoneNumber = '';
  String smsCode = '';

  // phone verification
  Future<bool> verifyPhoneNumber(String phoneNumber) async {
    try {
      await FirebaseAuth.instance
        .verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (PhoneAuthCredential credential) async {
            await FirebaseAuth.instance
              .signInWithCredential(credential);
          },
          verificationFailed: (FirebaseAuthException e) {},
          codeSent: (String verificationId, int? resendToken) {
            this.verificationId = verificationId;
            this.phoneNumber = phoneNumber;
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            this.verificationId = verificationId;
          },
        );

      return true;
    } catch (exception) {
      log(exception.toString());
      return false;
    }
  }

  // otp verification
  Future<bool> signInWithOtp() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    try {
      await FirebaseAuth.instance
        .signInWithCredential(credential);

      return true;
    } catch (exception) {
      log(exception.toString());
      return false;
    }
  }
}
