



import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'Firebase_services.dart';
class AuthServices {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseServices firebaseServices=FirebaseServices();
  Future Signup(String email,String password,String name,BuildContext context) async {

    try {
      UserCredential userCredential=await auth.createUserWithEmailAndPassword(
          email: email,
          password: password);

        print("////////////////////////////////////////////////${auth.currentUser}");
      firebaseServices.userDetailsAdd(name, email,context);

    } on FirebaseAuthException catch (e) {
      print("/////////////////////${e.code}///////////////////////////");

    }
  }

  Future Signin(String email,String password,BuildContext context)async{

    try{
      UserCredential userCredential=await auth.signInWithEmailAndPassword(
          email: email,
          password: password);
      User? user=auth.currentUser;
      if(user!=null){
        Navigator.pushNamed(context, "/main");

      }
      print("//////////////////////logined///////////////////////////");
    }
    on FirebaseAuthException catch(e){
      print("/////////////////////${e.code}////////////////////////////////");
    }
  }

}
