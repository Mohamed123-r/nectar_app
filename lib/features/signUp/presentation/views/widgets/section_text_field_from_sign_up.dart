import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';

class SctionTextFieldFromSignUp extends StatelessWidget {
  const SctionTextFieldFromSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sign Up",
          style: Styles.textStyle26,
        ),
        SizedBox(height: 15.sp),
        const CustomTextFromTextField(
          hintText: 'Enter your credentials to continue',
        ),
        SizedBox(height: 40.sp),
        const CustomTextFromTextField(
          hintText: 'Username',
        ),
        CustomTextField(
          onSaved: (value) {},
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Phone Number',
        ),
        CustomTextField(
          onSaved: (value) {},
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Email',
        ),
        CustomTextField(
          onSaved: (value) {},
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Password',
        ),
        const PasswordTextField(),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Confirm Password',
        ),
        const PasswordTextField(),
      ],
    );
  }
}
