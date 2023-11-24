import 'package:ecomerse_app/widgets/animatedText.dart';
import 'package:flutter/material.dart';
import '../AppUtils/app_Textstyles.dart';
import '../widgets/elevatedbutton.dart';
import 'login_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/bg/2.jpg",
                ))),
      ),
      Positioned(
        right: 10,
        left: 20,
        bottom: 200,
        child: AniText(text: [
          "Step into trends effortlessly. Fashion at your fingertips",
          "Discover style effortlessly. Fashion made easy, just for you.",
          "Simplicity meets style. Elevate your fashion game instantly.",
          "Effortless fashion, endless possibilities. Your style, your way.",
          "Unleash your style with ease. Elevate every look, every day.",
          "Your style, your way. Fashion made easy with a touch.",
          "Fashion made easy. Your style companion awaits.",
        ], textstyle: AppTextStyle.introstyle),
      ),
      Positioned(
          right: 20,
          left: 20,
          bottom: 120,
          child: CustomElevatedbutton(
            buttonStyle: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.indigo.shade700),
            ),
            textStyle: AppTextStyle.introbutton,
            text: "Get Started",
            onpressed: () {
              Navigator.pushNamed(context, "/login");
            },
          )),
    ])));
  }
}
