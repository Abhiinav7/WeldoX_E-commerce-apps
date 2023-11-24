import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String hintext;
  TextEditingController textEditingController;
  final bool obscuretext;
  String? Function(String?)? validator;

  CustomTextfield(
      {super.key,
      required this.textEditingController,
      required this.hintext,
      required this.obscuretext,
        required this.validator


      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: textEditingController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:  BorderSide(color: Colors.white,width: 1)
        ),
        enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:  BorderSide(color: Colors.white,width: 1),
        ),
       
        hintText: hintext,
        hintStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        )
          ),
    );
  }
}
