import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/Firebase_services.dart';
class MyCart extends StatefulWidget {
   MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}
class _MyCartState extends State<MyCart> {
   FirebaseAuth auth = FirebaseAuth.instance;//created an instance for auth for taking user id

   getUserId()async{//function for user id
     String uid=auth.currentUser!.uid;
     setState(() {
       userId=uid;
     });

   }
   @override
   void initState() {// this function help to work function first after execution
     getUserId();
     super.initState();
   }
    
String userId='';
CollectionReference cl=FirebaseFirestore.instance.collection("user");

   FirebaseServices firebaseServices=FirebaseServices();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("MyCart"),) ,
      body:StreamBuilder(
        stream: cl.doc(userId).collection("cart").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else{
            final products=snapshot.data!.docs;
return ListView.builder(
  itemCount: products.length,
    itemBuilder: (context, index) {
final product=products[index];
return ListTile(
leading: Image.asset(product["imagepath"]),
  title: Text(product["name"],style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
  subtitle: Text("₹ ${product["price"]}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
  trailing: IconButton(
    icon: Icon(Icons.delete,size: 30,color: Colors.red,),
    onPressed: (){
      firebaseServices.UserCartDelete(product);

    },
  ),
);
    },);
          }
        },

      )

    );
  }
}
