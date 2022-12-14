import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:market_app_with_flutter/consts/consts.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  //text controllers
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //login Method
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;

    try {
      await auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (value) {
      VxToast.show(context, msg: value.toString());
    }
    return userCredential;
  }

  //signup method

  Future<UserCredential?> signupMethod({email, password, context}) async {
    UserCredential? userCredential;

    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (value) {
      VxToast.show(context, msg: value.toString());
    }
    return userCredential;
  }

  //storing data method
  storeUserData({name, password, email}) async {
    DocumentReference store = firestore.collection(usersCollection).doc(currentUser!.uid);
    store.set({
      'name': name,
      'email': email,
      'password': password,
      'imageUrl': '',
      'id': currentUser!.uid,
    });
  }

  //signout method
  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (value) {
      VxToast.show(context, msg: value.toString());
    }
  }
}
