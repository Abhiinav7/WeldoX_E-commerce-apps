import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("user");

  userDetailsAdd(String name, String email, BuildContext context) async {
    try {
      User? user = auth.currentUser;
      String userId = user!.uid;
      collectionReference.doc(userId).set({"username": name, "email": email});
      print("///////////////////data added/////////////////////////");
      if (userId != null) {
        Navigator.pushNamed(context, "/main");
      }
    } catch (e) {
      print("//////////////////${e}//////////////////");
    }
  }

  userCartAdd(String name, String price, String path) async {
    try {
      String userId = auth.currentUser!.uid;
      var time = DateTime.now();
      collectionReference
          .doc(userId)
          .collection("cart")
          .doc(time.toString())
          .set({
        "name": name,
        "price": price,
        "imagepath": path,
        "time": time.toString()
      });
    } catch (e) {
      print("/////////////////${e}//////////////////");
    }
  }

  UserCartDelete(product) async {
    String userId = auth.currentUser!.uid;
    try {
      collectionReference
          .doc(userId)
          .collection("cart")
          .doc(product["time"])
          .delete();
    } catch (e) {
      print("/////////////////////${e}////////////////////////");
    }
  }

  UserCartDelete1(time) async {
    ////both cart delete are same but value passing are changing opposite(argument passing =product["time])
    String userId = auth.currentUser!.uid;
    try {
      collectionReference
          .doc(userId)
          .collection("cart")
          .doc(time.toString())
          .delete();
    } catch (e) {
      print("/////////////////////${e}////////////////////////");
    }
  }
  Future<void> signOut() async {
    await auth.signOut();
    print("//////////////////////Logged out///////////////////////////");
  }

  //------here products are added randomly without specifying documents thus we acces through document id -------------------------------------------------------
  userAddCart(String name, String price, String path) async {
    String userId = auth.currentUser!.uid;

    final data = {"name": name, "price": price, "imagepath": path};
    collectionReference.doc(userId).collection("cart").add(data);
  }

  UserDeleteCart(docId) async {
    String userId = auth.currentUser!.uid;
    try {
      collectionReference.doc(userId).collection("cart").doc(docId).delete();
    } catch (e) {
      print("/////////////////////${e}////////////////////////");
    }
  }
}
