import 'dart:typed_data';

//import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_storage/firebase_storage.dart';


class FirebaseAuthentication {




  
  Future<void> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final user = FirebaseAuth.instance.currentUser;
      print("${user!.uid}");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
      } else if (e.code == 'wrong-password') {}
    }
  }

 // Future<void> uploadFile() async {
   // FilePickerResult? result = await FilePicker.platform.pickFiles(    );
  //  if (result != null) {
  //    Uint8List? fileBytes = result.files.first.bytes;
  ////    String fileName = result.files.first.name;
  ///    await FirebaseStorage.instance.ref('$fileName').putData(fileBytes!);
  //} else {
   //   print("nhi hora upload");
   // }
 // }
}