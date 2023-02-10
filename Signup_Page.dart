import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  Future<void> signUp() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text, password: passsword.text);
      await userCredential.user!.sendEmailVerification();
    } catch (e) {
      print(e);
    }
  }

  TextEditingController email = new TextEditingController();
  TextEditingController passsword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.75,
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'email',
                  hintText: 'example@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.75,
              child: TextFormField(
                controller: passsword,
                decoration: InputDecoration(
                  labelText: 'password',
                  hintText: 'flutter',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blueAccent,
            width: MediaQuery.of(context).size.width / 5,
            child: TextButton(
              onPressed: () async {
                await signUp();
              },
              child: Text("Sign up"),
            ),
          ),
          SizedBox(
            height: 50,
          ),
      TextButton(
                  onPressed: () {
                   Navigator.of(context)
                         .push(MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                   child: Container(
                     height: 75,
                     width: MediaQuery.of(context).size.width / 2.5,
                     decoration: BoxDecoration(color: Color.fromARGB(255, 6, 73, 188)),
                     child: Center(child: Text("Login")),
                   ),
                ),
        ],
      ),
    );
  }
}
