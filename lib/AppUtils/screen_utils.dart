import 'package:flutter/material.dart';

class ScreenUtils{
  static double screenWidth(BuildContext context) {
    return MediaQuery
        .of(context)
        .size
        .width;
  }
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

}
/*
child:DefaultTextStyle(
style: const TextStyle(
fontSize: 32.0,
color: Colors.white,
fontWeight: FontWeight.bold,
shadows: [
Shadow(
color: Colors.black54,
blurRadius: 12,
offset: Offset(2, 2))
]),
child: AnimatedTextKit(
repeatForever: true,
animatedTexts: [
FadeAnimatedText(
duration: Duration(seconds: 5),
"Step into trends effortlessly. Fashion at your fingertips.",
textStyle: const TextStyle(
fontSize: 32.0,
fontWeight: FontWeight.bold,
),
),
FadeAnimatedText(
duration: Duration(seconds: 5),
"Discover style effortlessly. Fashion made easy, just for you.",
textStyle: const TextStyle(
fontSize: 32.0,
fontWeight: FontWeight.bold,
),
),
FadeAnimatedText(
duration: Duration(seconds: 5),
"Simplicity meets style. Elevate your fashion game instantly.",
textStyle: const TextStyle(
fontSize: 32.0,
fontWeight: FontWeight.bold,
),
),
FadeAnimatedText(
duration: Duration(seconds: 5),
"Effortless fashion, endless possibilities. Your style, your way.",
textStyle: const TextStyle(
fontSize: 32.0,
fontWeight: FontWeight.bold,
),
),
FadeAnimatedText(
duration: Duration(seconds: 5),
"Unleash your style with ease. Elevate every look, every day.",
textStyle: const TextStyle(
fontSize: 32.0,
fontWeight: FontWeight.bold,
),
),
FadeAnimatedText(
duration: Duration(seconds: 5),
"Your style, your way. Fashion made easy with a touch.",
textStyle: const TextStyle(
fontSize: 32.0,
fontWeight: FontWeight.bold,
),
),
FadeAnimatedText(
duration: Duration(seconds: 5),
"Fashion made easy. Your style companion awaits.",
textStyle: const TextStyle(
fontSize: 32.0,
fontWeight: FontWeight.bold,
),
),
],
),
),
*/