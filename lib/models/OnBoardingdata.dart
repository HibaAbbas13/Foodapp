import 'package:food_app/data/AppAssets.dart';

class OnboardingModel {
  String title;
  String subtitle;
  String image;

  OnboardingModel(
      {required this.image, required this.title, required this.subtitle});
}

List<OnboardingModel> onboardingList = [
  OnboardingModel(
      image: AppAssets.onboarding1,
      title: 'Trending Foods',
      subtitle:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit. '),
  OnboardingModel(
      image: AppAssets.onboarding2,
      title: 'Fast Delivery',
      subtitle:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit. '),
  OnboardingModel(
      image: AppAssets.onboarding3,
      title: 'Find Nearby Restaurants',
      subtitle:
          'Amet minim mollit non deserunt ullamco est sit \naliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit. '),
  OnboardingModel(
      image: AppAssets.onboarding4,
      title: 'Easy Ordering',
      subtitle:
          'Amet minim mollit non deserunt ullamco est sit\n aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit. ')
];
