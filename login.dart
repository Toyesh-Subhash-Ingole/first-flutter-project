import 'package:flutter/material.dart';

import '../controllers/auth.dart';
//import 'package:flutter_application_2/controllers/authentication.dart';
//import 'package:flutter_application_2/views/userProfile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Login Page"),
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
              controller: password,
              obscureText: true,
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
              await firebaseAuthentication.signIn(email.text, password.text);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
         child: Text("Login karo"),
          ),
        ),
      ]),
    );
  }
}