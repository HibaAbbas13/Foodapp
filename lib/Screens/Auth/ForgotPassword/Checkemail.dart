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

class CheckEmail extends StatelessWidget {
  CheckEmail({super.key});

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 229),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              Image.asset(AppAssets.ellipse),
              SvgPicture.asset(AppIcons.emailcheck),
            ]),
            SizedBox(
              height: 22.h,
            ),
            Text(
              "Check email",
              style: AppTypography.kExtraBold24,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Please check your email to create a  \nnew password",
              textAlign: TextAlign.center,
              style: AppTypography.kLight12,
            ),
            SizedBox(
              height: 24.h,
            ),
            const Center(
              child: Text.rich(
                  TextSpan(text: 'Email not received? ', children: <InlineSpan>[
                TextSpan(
                  text: 'ReSubmit',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ])),
            ),
            SizedBox(
              height: 198.h,
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
