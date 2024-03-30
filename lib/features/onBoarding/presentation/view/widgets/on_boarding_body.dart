import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding:  EdgeInsets.symmetric(horizontal: 16.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const CustomImageLogo(),
               SizedBox(
                height: 35.sp,
              ),
               const Text(
                "Welcome",
                style: Styles.textStyle48,
              ),
               const Text(
                "to our store",
                style: Styles.textStyle48,
              ),
               SizedBox(
                height: 19.sp,
              ),
              Text(
                "Ger your groceries in as fast as one hour",
                style: Styles.textStyle16.copyWith(
                  color: const Color(0xff7C7C7C)
                ),
              ),
               SizedBox(
                height: 40.sp,
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
