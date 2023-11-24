import 'package:flutter/material.dart';
class CustomTextbutton extends StatelessWidget{
void Function()? onpressed;
final String text;
TextStyle textStyle;

   CustomTextbutton({super.key,required this.onpressed,required this.text,required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
        onPressed:onpressed,
        child: Text(
          text,
          style:textStyle ,
        )
    );
  }
}
