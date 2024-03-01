import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Screens/Auth/ForgotPassword/Checkemail.dart';
import 'package:food_app/Screens/Auth/Components/Authfield.dart';
import 'package:food_app/Screens/Auth/ForgotPassword/Updatepass.dart';
import 'package:food_app/Screens/Components/CommonButton.dart';
import 'package:food_app/data/AppColors.dart';
import 'package:food_app/data/AppTypography.dart';

class Resetpassword extends StatelessWidget {
  Resetpassword({super.key});

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 175, left: 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reset your password",
              style: AppTypography.kExtraBold24,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text("Enter your password below", style: AppTypography.kLight12),
            SizedBox(
              height: 81.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 43),
              child: AuthField(
                  controller: _controller, hintText: "Password", icon: ""),
            ),
            SizedBox(
              height: 26.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 43),
              child: AuthField(
                  controller: _controller,
                  hintText: "Confirm Password",
                  icon: ""),
            ),
            SizedBox(
              height: 245.h,
            ),
            CommomButton(
              text: "Reset Password",
              color: AppColors.ktheme,
              color2: AppColors.kBlack,
              border: Border.all(width: 0),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Updatepassword()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
