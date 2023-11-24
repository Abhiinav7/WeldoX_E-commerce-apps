import 'dart:ui';

import 'package:ecomerse_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../AppUtils/app_Textstyles.dart';
import '../services/auth_services.dart';
import '../widgets/elevatedbutton.dart';
import '../widgets/gesturdetector.dart';
import '../widgets/squareTile.dart';
import '../widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthServices authservices=AuthServices();
    final _key=GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg/leg1.jpg"), fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          child: Form(
            key: _key,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                SizedBox(
                height: 55,
                child: CustomTextfield(
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return "Field cannot be empty";
                    }else if(!value.toString().contains("@")){
                      return "Inavlid email";
                    } else {
                      return null;
                    }
                  },
                  hintext: "Email",
                  obscuretext: false,
                  textEditingController: email,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 55,
                child: CustomTextfield(
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Field cannot be empty";
                    } else if (value.toString().length <= 4) {
                      return "Wrong password";
                    }
                    else {
                      return null;
                    }
                  },
                  hintext: "Password",
                  obscuretext: false,
                  textEditingController: password,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomElevatedbutton(
                textStyle: AppTextStyle.loginbutton,
                onpressed: () {
if(_key.currentState!.validate()){
_key.currentState!.save();
}
authservices.Signin(email.text, password.text,context);
                },
                text: 'SIGN IN',
                buttonStyle: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Colors.white.withOpacity(0.35)),
                    elevation: MaterialStatePropertyAll(0)),
              ),

              SizedBox(
                height: 30,
              ),
              CustomGestur(
                ontap: () {
                  Navigator.pushNamed(context, "/signup");
                },
                text: 'Dont have an account,Signup',
                textStyle: AppTextStyle.gesturdetector
              ),
                  SizedBox(
                    height: 120,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                            thickness: 0.9,
                            color: Colors.grey[400],
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Or continue with",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.9,
                        color: Colors.grey[400],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
children: [
  SquareTile(imgpath: "assets/logo/google.png",),
  SizedBox(width: 1,),
  SquareTile(imgpath: "assets/logo/fb1.png",)
],
                  )
                ],
      ),
            ),
          ),
    ),)

    );
  }
}
