import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';

class SectionTextFieldFromResetPassword extends StatelessWidget {
  const SectionTextFieldFromResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextFromTextField(
          hintText: 'Enter the 5 digits code',
        ),
        const CustomTextField(
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 40.sp),
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
