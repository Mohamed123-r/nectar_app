import 'package:flutter/material.dart';
import 'package:nectar/features/logIn/presentation/views/congratulation_view.dart';
import 'package:nectar/features/home/presentation/views/home_view.dart';
import 'package:nectar/features/logIn/presentation/views/forget_password_view.dart';
import 'package:nectar/features/logIn/presentation/views/log_in_view.dart';
import 'package:nectar/features/onBoarding/presentation/view/on_boarding_view.dart';
import 'package:nectar/features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kOnBoarding = '/onBoarding';
  static const kLogInView = '/login';
  static const kForgetPasswordView = '/forgetPassword';
  static const kResetPasswordView = '/resetPassword';
  static const kCongratulationView = '/congratulation';
  static const kSignUpView = '/signup';
  static const kHomeView = '/home';

  static Route<Object?> router(RouteSettings settings) {
    switch (settings.name) {
      case kSplash:
        return MaterialPageRoute(builder: (context) {
          return const SplashView(); //replace this Scaffold with a Splash Screen
        });
      case kOnBoarding:
        return MaterialPageRoute(builder: (context) {
          return const OnBoardingView(); //replace this Scaffold with a on boarding Screen
        });

      case kLogInView:
        return MaterialPageRoute(builder: (context) {
          return const LogInView(); //replace this Scaffold with a login Screen
        });

      case kForgetPasswordView:
        return MaterialPageRoute(builder: (context) {
          return const ForgotPasswordView(); //replace this Scaffold with a login Screen
        });

      case kCongratulationView:
        return MaterialPageRoute(builder: (context) {
          return const CongratulationView(); //replace this Scaffold with a congratulation Screen
        });

      case kHomeView:
        return MaterialPageRoute(builder: (context) {
          return const HomeView(); //replace this Scaffold with a Home Screen
        });

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("AppStrings.notFound"),
            ),
          );
        });
    }
  }
}
