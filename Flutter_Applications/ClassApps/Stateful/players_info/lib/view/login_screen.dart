import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:players_info/snackbar/custom_snackbar.dart';
import 'package:players_info/view/player_info.dart';
import 'package:players_info/view/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordtextEditingController =
      TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _emailTextEditingController,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                hintText: "Enter your email",
                hintStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: _passwordtextEditingController,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              obscureText: _showPassword,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _showPassword = !_showPassword;
                      setState(() {});
                    },
                    child: Icon(
                      (_showPassword) ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return PlayersInfo();
                  },
                ),
              );
            },
            child: GestureDetector(
              onTap: () async {
                if (_emailTextEditingController.text.trim().isNotEmpty &&
                    _passwordtextEditingController.text.trim().isNotEmpty) {
                  try {
                    UserCredential userCredential =
                        await _firebaseAuth.signInWithEmailAndPassword(
                            email: _emailTextEditingController.text,
                            password: _passwordtextEditingController.text);

                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context){
                      return PlayersInfo();
                    }));
                  } on FirebaseAuthException catch (error) {
                    CustomSnackbar.showCustomSnackBAr(
                        context: context, message: "${error.code}");
                  }
                }else{
                  CustomSnackbar.showCustomSnackBAr(context: context, message:"Enter Valid Data");
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const RegisterScreen();
                },
              ));
            },
            child: const Text(
              "Create new account ? Register",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
