import 'package:flutter/material.dart';

class CustomElevatedbutton extends StatelessWidget {
   Function()? onpressed;
  String text;
  final TextStyle textStyle;
final ButtonStyle buttonStyle;

  CustomElevatedbutton(
      {super.key,
      required this.textStyle,
      required this.text,
     required this.onpressed,
        required this.buttonStyle
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,

        onPressed: onpressed,
        child: Text(
          text,
          style: textStyle,
        ));
  }
}
