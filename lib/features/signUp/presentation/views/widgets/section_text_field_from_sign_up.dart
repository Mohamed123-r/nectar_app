import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';

import '../../../../../core/function/validator.dart';

class SectionTextFieldFromSignUp extends StatelessWidget {
  const SectionTextFieldFromSignUp({
    super.key,
    required this.username,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  final TextEditingController username;
  final TextEditingController phoneNumber;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController confirmPassword;

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
          controller: username,
          onSaved: (value) {},
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter username';
            }
            return null;
          },
        ),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Phone Number',
        ),
        CustomTextField(
          controller: phoneNumber,
          onSaved: (value) {},
          keyboardType: TextInputType.phone,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter phone number';
            }
            return null;
          },
        ),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Email',
        ),
        CustomTextField(
          controller: email,
          validator: (value) {
            return validatorOfEmail(value);
          },
          onSaved: (value) {},
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Password',
        ),
        PasswordTextField(
          controller: password,
          validator: (value) {
            return validatorOfPassword(value);
          },
        ),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Confirm Password',
        ),
        PasswordTextField(
          controller: confirmPassword,
          validator: (value) {
            if (value != password.text) {
              return 'Password does not match';
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
