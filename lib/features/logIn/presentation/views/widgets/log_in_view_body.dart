import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_image_logo.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/section_text_field.dart';

import '../../../../../core/utils/styles.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.all(16.0.sp),
        child: Column(
          children: [
             SizedBox(height: 70.sp),
            const CustomImageLogo(),
             SizedBox(height: 100.sp),
            const SectionTextField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: Styles.textStyle14.copyWith(
                     color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(height: 20.sp),
            CustomButton(
              text: "Log In",
              onPressed: () {},
            ),
             SizedBox(height: 25.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: Styles.textStyle14.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: Styles.textStyle14.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
