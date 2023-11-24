import 'package:flutter/material.dart';

import '../AppUtils/app_colors.dart';
class MyAppbar extends StatefulWidget {
  const MyAppbar({super.key});

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

      floating: true,
      pinned: true,
      iconTheme: IconThemeData(color: AppColors.tertiarycolor,size: 35),
      backgroundColor: Colors.purple[100],
      elevation: 0,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.purple, fontSize: 25),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Text("WeldoX"),
      ),
      bottom: AppBar(

        backgroundColor: Colors.purple[100],
        automaticallyImplyLeading: false,
        title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Explore your favourite products",
              style: TextStyle(
                fontSize: 12
              ),
           ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 36,
                  width: 300,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.tertiarycolor,width: 2)
                  ),

                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Icon(Icons.search,
                      color: Colors.grey,),
                      SizedBox(height: 10,),
                      Text("search",style: TextStyle(fontSize: 15,fontStyle: FontStyle.normal),)

                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        titleTextStyle: TextStyle(
          color: Colors.purple,
          fontSize: 18,
          fontStyle: FontStyle.italic
        ),

      ),
    );
  }
}
