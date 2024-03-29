import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 70),
            const CustomImageLogo(),
            const SizedBox(height: 100),
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
            const SizedBox(height: 20),
            CustomButton(
              text: "Log In",
              onPressed: () {},
            ),
            const SizedBox(height: 25),
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
