import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:nectar/features/home/presentation/views/home_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: MediaQuery.of(context).size.width * 0.5,
      logo:Image.asset(
        Assets.splash,
        fit: BoxFit.cover,
        color: Colors.white,
        width: 300,
      ),
      backgroundColor: kPrimaryColor,
      loaderColor: Colors.white,
      showLoader: true,
      navigator: const HomeView(),
      durationInSeconds: 3,
    );
  }
}

