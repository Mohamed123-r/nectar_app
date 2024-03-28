import 'package:flutter/material.dart';
import 'package:nectar/core/utils/assets.dart';

class CustomImageLogo extends StatelessWidget {
  const CustomImageLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.logo,
      width: 48,
      height: 55,
      fit: BoxFit.cover,
    );
  }
}
