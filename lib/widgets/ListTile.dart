import 'package:flutter/material.dart';
class MyListtile extends StatelessWidget {

  String text;
  void Function()? ontap;
  final IconData icons;
TextStyle textStyle;
   MyListtile({
    super.key,
    required this.text,
    required this.ontap,
    required this.icons,
     required this.textStyle

  });

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      titleTextStyle: textStyle,
      title: Text(text),
      onTap:ontap ,
      leading: Icon(icons),

    );
  }
}
