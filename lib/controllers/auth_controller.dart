import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tiktok/constance.dart';

class AuthController extends GetxController {
  //upload image
  Future<String> _uploadToStorage(File image) async {
    Reference ref = firebaseStorage
        .ref()
        .child('profilepic')
        .child(firebaseAuth.currentUser!.uid);
    UploadTask uploadtask = ref.putFile(image);
    TaskSnapshot snap = await uploadtask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

  //registeruser
  void registerUser(
      String username, String email, String password, File? image) async {
    try {
      if (username.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          image != null) {
        UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);
     String downloadUrl= await _uploadToStorage(image);
      }
    } catch (e) {
      Get.snackbar(
        'Error Creating account',
        e.toString(),
      );
    }
  }
}
