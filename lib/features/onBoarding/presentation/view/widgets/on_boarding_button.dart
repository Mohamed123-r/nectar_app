import 'package:flutter/material.dart';
import 'package:nectar/core/widgets/custom_button.dart';



class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomButton(
      text: "Get Started",
    );
  }
}