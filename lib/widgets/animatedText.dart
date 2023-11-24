import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class AniText extends StatelessWidget {
  List <String>text;
  TextStyle textstyle;

  AniText({super.key, required this.text, required this.textstyle});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: text.map((text) {
        return FadeAnimatedText(
          text,
          textStyle: textstyle,
          duration: Duration(seconds: 5),
        );
      }).toList(),

    );
  }
}