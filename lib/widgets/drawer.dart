import 'package:ecomerse_app/AppUtils/app_Textstyles.dart';
import 'package:ecomerse_app/widgets/ListTile.dart';
import 'package:flutter/material.dart';

import '../services/Firebase_services.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({super.key});
  FirebaseServices firebaseServices=FirebaseServices();
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Column(

        children: [
          DrawerHeader(
              child: Center(
            child: Image.asset(
              "assets/logo/logo.png",
              color: Colors.red,
              height: 150,
            ),
          )),

          MyListtile(
              text: "home",
              ontap: () {Navigator.pushNamed(context, "/main");},
              icons: Icons.home,
              textStyle: AppTextStyle.listtile),
          MyListtile(
              text: "cart",
              ontap: () {
                Navigator.pushNamed(context, "/cart");
              },
              icons: Icons.shopping_cart,
              textStyle: AppTextStyle.listtile),

          MyListtile(
              text: "settings",
              ontap: () {
                firebaseServices.signOut();
              },
              icons: Icons.settings,
              textStyle: AppTextStyle.listtile),
          SizedBox(
            height: 350,
          ),
          MyListtile(
              text: "exit",
              ontap: () {
                Navigator.pushNamed(context, "/login");
              },
              icons: Icons.exit_to_app,
              textStyle: AppTextStyle.listtile),
        ],
      ),
    );
  }
}
