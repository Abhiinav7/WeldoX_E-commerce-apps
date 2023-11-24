import 'package:flutter/material.dart';

import '../services/Firebase_services.dart';

class MyShoes extends StatefulWidget {
  MyShoes({super.key});

  @override
  State<MyShoes> createState() => _MyShoesState();
}

class _MyShoesState extends State<MyShoes> {
  List<Map> products = [
    {"name": "PUMA", "price": "₹1949", "path": "assets/shoes/puma.png","isClicked":false},
    {"name": "CLYMB ", "price": "₹386", "path": "assets/shoes/clymb.png","isClicked":false},
    {"name": "REEBOK", "price": '₹1499', "path": "assets/shoes/reebok.png","isClicked":false},
    {"name": "ADIDAS", "price": "₹3865", "path": "assets/shoes/adidas.png","isClicked":false},
    {"name": "Aqualite ", "price": '₹699', "path": "assets/shoes/aqualite.png","isClicked":false},
    {"name": "Asian", "price": "₹549", "path": "assets/shoes/asian.png","isClicked":false},
    {"name": "Amico", "price": "₹299", "path": "assets/shoes/amico.png","isClicked":false},
    {"name": "PUMA ", "price": "₹1199", "path": "assets/shoes/puma2.png","isClicked":false},
    {"name": "Nike", "price": "₹5689", "path": "assets/shoes/nike.png","isClicked":false},
    {"name": "WOODLAND", "price": '₹2499', "path": "assets/shoes/woodland.png","isClicked":false},
    {"name": "ADIDAS ", "price": "₹1999", "path": "assets/shoes/adidas2.png","isClicked":false},
    {"name": "Asian", "price": "₹549", "path": "assets/shoes/asian2.png","isClicked":false},
  ];

  FirebaseServices firebaseServices=FirebaseServices();

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0, // Spacing between columns
          mainAxisSpacing: 0,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            print("hy");
          },
          child: Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.purple, width: 2),
                  image: DecorationImage(
                      image: AssetImage(products[index]["path"]))),
              child: Stack(
                children: [
                  Positioned(
                      left: 5,
                      bottom: 10,
                      child: Text(
                        products[index]["name"],
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.w700),
                      )),
                  Positioned(
                    bottom: 5,
                      right: 10,
                      child: Container(
                       decoration: BoxDecoration(
                         color: Colors.black,
                         border: Border.all(color: Colors.purple,width: 2),
                         borderRadius: BorderRadius.circular(8)
                       ),
                        child: Text(products[index]["price"],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800
                        ),
                        ),
                      )
                  ),
                  Positioned(
                    top: 1,
                      right: 1,
                      child: IconButton(

                          onPressed: (){
                            setState(() {
                             products[index]["isClicked"]=!products[index]["isClicked"];
                            });
                            products[index]["isClicked"] ?
                            firebaseServices.userCartAdd(
                                products[index]["name"],
                                products[index]["price"],
                              products[index]["path"],
                            ) :firebaseServices.UserCartDelete1(products[index]["time"]);

                          },
                          icon: Icon(
                            products[index]["isClicked"] ? Icons.favorite:Icons.favorite_border,
                            color: products[index]["isClicked"]? Colors.red :null,
                            size: 27,


                          )))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
