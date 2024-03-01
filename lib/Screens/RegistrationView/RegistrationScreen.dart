import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Screens/Auth/LoginScreen.dart';
import 'package:food_app/Screens/Auth/SignUpScreen.dart';
import 'package:food_app/Screens/Components/CommonButton.dart';
import 'package:food_app/data/AppAssets.dart';
import 'package:food_app/data/AppColors.dart';
import 'package:food_app/data/AppTypography.dart';

class ResgistrationView extends StatelessWidget {
  const ResgistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kwhite,
        body: Padding(
          padding: const EdgeInsets.only(left: 33, right: 33, top: 85),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppAssets.registraion),
              SizedBox(
                height: 48.h,
              ),
              Text(
                "Welcome to Super Foodo",
                style: AppTypography.kExtraBold24,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Ut cras pellentesque ",
                style: AppTypography.kLight12,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 48.h,
              ),
              CommomButton(
                text: "Create Account ",
                color: AppColors.ktheme,
                color2: AppColors.kBlack,
                border: Border.all(width: 0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
              ),
              SizedBox(
                height: 13.h,
              ),
              CommomButton(
                text: "Login ",
                color: AppColors.kwhite,
                color2: AppColors.kBlack,
                border: Border.all(width: 1),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              SizedBox(
                height: 48.h,
              ),
              Text(
                "By Registering or Login you have agreed to these Terms and Conditions. ",
                style: AppTypography.kSemiBold12,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
