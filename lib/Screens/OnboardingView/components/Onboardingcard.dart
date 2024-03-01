import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/data/AppTypography.dart';
import 'package:food_app/models/OnBoardingdata.dart';

class OnBoardingCard extends StatelessWidget {
  final OnboardingModel onboarding;
  OnBoardingCard({super.key, required this.onboarding});

  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Image.asset(
            onboarding.image,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            onboarding.title,
            style: AppTypography.kBold26,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            onboarding.subtitle,
            style: AppTypography.kLight12,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
