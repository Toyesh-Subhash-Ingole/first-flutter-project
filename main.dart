import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/views/signup_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyCcP46_x-0CxrFrWL02HXfPGALxvP2eL1s",
      authDomain: "fir-a602d.firebaseapp.com",
      projectId: "fir-a602d",
      storageBucket: "fir-a602d.appspot.com",
      messagingSenderId: "724887253507",
      appId: "1:724887253507:web:a35b511c33efe90ad11436",
      measurementId: "G-PFR574Z38L")
  );
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home : SignupPage()
    );
  }
}
