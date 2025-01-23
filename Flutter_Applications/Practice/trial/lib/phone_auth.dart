import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:trial/otp_screen.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  TextEditingController countryController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    countryController.text = "+91";
  }

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
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),

                  //country textfield
                  SizedBox(
                    width: 40,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      controller: countryController,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),

                  const Text(
                    "|",
                    style: TextStyle(fontSize: 26, color: Colors.grey),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  // number textfield
                  Expanded(
                    child: SizedBox(
                        width: 50,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: phoneNoController,
                          decoration: const InputDecoration(
                              hintText: "Phone", border: InputBorder.none),
                        )),
                  )
                ],
              ),
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
                onPressed: () async {
                  try {
                    LoginController controller = LoginController();
                    await controller
                        .verifyPhoneNumber('+91${phoneNoController.text}');

                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OtpScreen()));
                  } catch (ex) {
                    log(ex.toString());
                  }
                },
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
