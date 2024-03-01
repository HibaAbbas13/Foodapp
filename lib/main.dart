import 'dart:js';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Screens/Auth/LoginScreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

mixin AppColors {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(400, 812),
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: MaterialApp(
                title: 'FoodApp',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    // primaryColor: AppColors.ktheme,
                    //  scaffoldBackgroundColor: AppColors.kWhite,
                    // appBarTheme: AppBarTheme(backgroundColor: AppColors.kWhite)
                    ),
                scrollBehavior:
                    const ScrollBehavior().copyWith(overscroll: false),
                home: LoginScreen()));
      },
    );
  }
}
