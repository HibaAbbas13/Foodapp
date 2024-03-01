import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/Screens/Auth/Components/Authfield.dart';
import 'package:food_app/Screens/Auth/ForgotPassword/Resetpass.dart';
import 'package:food_app/Screens/Components/CommonButton.dart';
import 'package:food_app/data/AppAssets.dart';
import 'package:food_app/data/AppColors.dart';
import 'package:food_app/data/AppIcons.dart';
import 'package:food_app/data/AppTypography.dart';

class Updatepassword extends StatelessWidget {
  Updatepassword({super.key});

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 229, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              Image.asset(AppAssets.ellipse),
              SvgPicture.asset(AppIcons.tick),
            ]),
            SizedBox(
              height: 22.h,
            ),
            Text(
              "Password updated",
              style: AppTypography.kExtraBold24,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Congratulation your password \nhas been updated",
              textAlign: TextAlign.center,
              style: AppTypography.kLight12,
            ),
            SizedBox(
              height: 250.h,
            ),
            CommomButton(
              text: "Continue",
              color: AppColors.ktheme,
              color2: AppColors.kBlack,
              border: Border.all(width: 0),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Resetpassword()));
              },
            )
          ],
        ),
      ),
    );
  }
}
