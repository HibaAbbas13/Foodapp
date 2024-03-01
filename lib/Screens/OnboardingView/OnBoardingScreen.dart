import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Screens/OnboardingView/components/Onboardingcard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_app/Screens/RegistrationView/RegistrationScreen.dart';
import 'package:food_app/data/AppColors.dart';
import 'package:food_app/data/AppTypography.dart';
import 'package:food_app/models/OnBoardingdata.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentIndex = 0;
  PageController _controller = PageController();
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: AppBar(
          backgroundColor: AppColors.kwhite,
          elevation: 0,
          title: RichText(
            text: TextSpan(
              style: const TextStyle(),
              children: <TextSpan>[
                TextSpan(
                  text: '${_currentIndex + 1}',
                  style: AppTypography.kSemiBold18
                      .copyWith(color: AppColors.ktheme),
                ),
                TextSpan(text: '/3', style: AppTypography.kSemiBold18
                    //       .copyWith(color: AppColors.kGrey ),
                    ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResgistrationView()));
              },
              child: Text(
                "Skip",
                style:
                    AppTypography.kSemiBold18.copyWith(color: AppColors.ktheme),
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: onboardingList.length,
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    initialPage: 0,
                    viewportFraction: 1.5,
                    aspectRatio: 30 / 40,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    }),
                itemBuilder: (BuildContext context, int index, int realIndex) =>
                    OnBoardingCard(onboarding: onboardingList[index]),
              ),
              SizedBox(
                height: 54.h,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: JumpingDotEffect(
                    dotColor: AppColors.ktheme,
                    dotHeight: 10.h,
                    dotWidth: 10.w,
                    activeDotColor: AppColors.klighttheme),
              )
            ],
          ),
        ));
  }
}
