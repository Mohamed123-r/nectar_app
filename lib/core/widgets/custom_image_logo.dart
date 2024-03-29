import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';

class CustomImageLogo extends StatelessWidget {
  const CustomImageLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.logo,
      width: 48.sp,
      height: 55.sp,
      fit: BoxFit.cover,
    );
  }
}
