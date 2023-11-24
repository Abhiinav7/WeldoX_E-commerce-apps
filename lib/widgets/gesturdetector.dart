import 'package:flutter/material.dart';

class CustomGestur extends StatelessWidget {
  Function()? ontap;
  String text;
  TextStyle textStyle;


  CustomGestur({
    super.key,
    required this.ontap,
    required this.text,
    required this.textStyle


  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Text(
        text,
        style: textStyle


      ),

    );
  }
}
