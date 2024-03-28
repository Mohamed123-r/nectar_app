import 'package:flutter/material.dart';
import 'package:nectar/features/home/presentation/views/home_view.dart';
import 'package:nectar/features/splash/presentation/view/splash_view.dart';


abstract class AppRouter {
  static const kSplash = '/';
  static const kHomeView = '/home';


  static Route<Object?> router(RouteSettings settings) {
    switch (settings.name) {
      case kSplash:
        return MaterialPageRoute(builder: (context) {
          return const SplashView(); //replace this Scaffold with a Splash Screen
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
