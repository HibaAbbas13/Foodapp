import 'dart:js';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Screens/Auth/Components/Authfield.dart';

import 'package:food_app/Screens/Auth/ForgotPassword/Forgotpass.dart';
import 'package:food_app/Screens/Auth/SignUpScreen.dart';
import 'package:food_app/Screens/Components/CommonButton.dart';
import 'package:food_app/data/AppAssets.dart';
import 'package:food_app/data/AppColors.dart';
import 'package:food_app/data/AppIcons.dart';
import 'package:food_app/data/AppTypography.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller1 = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  void enter_login() {
    if (_formKey.currentState!.validate()) {
      (context) => ForgotPassword();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 69, left: 26, right: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.splash),
              SizedBox(
                height: 47.h,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    AuthField(
                      hintText: "Email",
                      icon: "NONE",
                      controller: _controller1,
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    AuthField(
                      hintText: "Password",
                      icon: "NONE",
                      controller: _controller2,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forget password ?",
                          style: AppTypography.kSemiBold14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    CommomButton(
                      text: "Login",
                      color: AppColors.ktheme,
                      color2: AppColors.kBlack,
                      border: Border.all(width: 0),
                      onTap: () {
                        enter_login();
                      },
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    Row(
                      children: [
                        const Divider(
                          height: 20,
                          thickness: 50,
                          indent: 40,
                          endIndent: 125,
                          color: Colors.black,
                        ),
                        // S
                        Text(
                          "OR",
                          style: AppTypography.kSemiBold12,
                        ),
                        const Divider(
                          height: 20,
                          thickness: 50,
                          indent: 20,
                          endIndent: 125,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    CommomButton(
                      text: "Login With Google",
                      color: AppColors.kwhite,
                      color2: AppColors.kBlack,
                      border: Border.all(width: 0),
                      onTap: () {
                        launch('  https://www.google.co.uk/');
                      },
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    CommomButton(
                      text: "Login with Facebook",
                      color: AppColors.kwhite,
                      color2: AppColors.kBlack,
                      border: Border.all(width: 0),
                      onTap: () {
                        launch('https://www.facebook.com/');
                      },
                    ),
                    SizedBox(
                      height: 53.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: const Text.rich(
                        TextSpan(
                          text: 'Don’t have an account?',
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Sign up',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
