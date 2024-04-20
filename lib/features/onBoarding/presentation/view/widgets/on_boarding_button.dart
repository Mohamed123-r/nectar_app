import 'package:flutter/material.dart';
import 'package:nectar/core/database/cache/cache_helper.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/custom_button.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Get Started",
      onPressed: () {
        Navigator.pushReplacement(
          context,
          AppRouter.router(
            const RouteSettings(name: AppRouter.kLogInView),
          ),
        );
        CacheHelper().put(key: "onBoarding", value: true);
      },
    );
  }
}
