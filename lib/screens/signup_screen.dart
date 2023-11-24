import 'dart:ui';

import 'package:flutter/material.dart';

import '../AppUtils/app_Textstyles.dart';
import '../services/auth_services.dart';
import '../widgets/elevatedbutton.dart';
import '../widgets/textfield.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController email = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController pass = TextEditingController();

final _key=GlobalKey<FormState>();


AuthServices authservices=AuthServices();
return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg/intro1.jpg"),
                  fit: BoxFit.cover)),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 52,
                        child: CustomTextfield(

                          hintext: "Username",
                          obscuretext: false,
                          textEditingController: name,
                          validator: (value) {
    if (value.toString().isEmpty) {
    return "Field cannot be empty";
    } else if (value.toString().length <= 2) {
    return "must contain 3 characters";
    }

    else {
      return null;
    }


                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 52,
                        child: CustomTextfield(
                          hintext: "Email",
                          obscuretext: false,
                          textEditingController: email,
                          validator: (value) {
                            if(value.toString().isEmpty){
                              return "Field cannot be empty";
                            }else if(!value.toString().contains("@")){
                              return "Inavlid email";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 52,
                        child: CustomTextfield(
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return "Field cannot be empty";
                            } else if (value.toString().length <= 5) {
                              return "weak password";
                            }
                            else {
                              return null;
                            }
                          },
                          hintext: "Password",
                          obscuretext: false,
                          textEditingController: pass,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomElevatedbutton(
                        textStyle: AppTextStyle.loginbutton,
                        text: 'SIGN UP',
                        onpressed: () {
if(_key.currentState!.validate()){
  _key.currentState!.save();

}
authservices.Signup(email.text, pass.text,name.text,context);


                        },
                        buttonStyle: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Colors.white.withOpacity(0.35)),
                            elevation: MaterialStatePropertyAll(0)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(

                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: Text(
                          "Already have an account,Signin ",
                          style: TextStyle(
                              color: Colors.indigo, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
