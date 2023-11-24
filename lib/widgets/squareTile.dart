import 'package:flutter/material.dart';
class SquareTile extends StatelessWidget {
   SquareTile({

     super.key,
     required this.imgpath
   });
  final String imgpath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
decoration: BoxDecoration(
  border: Border.all(color: Colors.transparent),
  borderRadius: BorderRadius.circular(12),
  color: Colors.transparent
),
child: Image.asset(imgpath,height: 40,),
      ),
    );
  }
}
