import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/database/cache/cache_helper.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:nectar/features/logIn/presentation/views/log_in_view.dart';
import 'package:nectar/features/onBoarding/presentation/view/on_boarding_view.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final bool onBoarding = CacheHelper().getData(key: "onBoarding") ?? false;

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: MediaQuery.of(context).size.width * 0.5,
      logo: Image.asset(
        Assets.splash,
        fit: BoxFit.cover,
        color: Colors.white,
        width: 300.sp,
      ),
      backgroundColor: kPrimaryColor,
      loaderColor: Colors.white,
      showLoader: true,
      navigator: onBoarding ? const LogInView() : const OnBoardingView(),
      durationInSeconds: 3,
    );
  }
}