import 'package:flutter/material.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_image_logo.dart';

import 'on_boarding_button.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.onBoarding),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const CustomImageLogo(),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Welcome",
                style: Styles.textStyle48,
              ),
              const Text(
                "to our store",
                style: Styles.textStyle48,
              ),
              const SizedBox(
                height: 19,
              ),
              Text(
                "Ger your groceries in as fast as one hour",
                style: Styles.textStyle16.copyWith(
                  color: const Color(0xff7C7C7C),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const OnBoardingButton(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
