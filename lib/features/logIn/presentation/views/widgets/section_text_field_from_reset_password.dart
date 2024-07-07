import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/function/validator.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';

class SectionTextFieldFromResetPassword extends StatelessWidget {
  const SectionTextFieldFromResetPassword(
      {super.key,
      required this.email,
      required this.password,
      required this.passwordConfirm});

  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController passwordConfirm;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextFromTextField(
          hintText: 'Email',
        ),
        CustomTextField(
            validator: (value) {
              return validatorOfEmail(value);
            },
            onSaved: (value) {},
            keyboardType: TextInputType.emailAddress,
            controller: email),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'New Password',
        ),
        PasswordTextField(
          validator: (value) {
            return validatorOfPassword(value);
          },
          controller: password,
        ),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Confirm Password',
        ),
        PasswordTextField(
          validator: (value) {
            return validatorOfPassword(value);
          },
          controller: passwordConfirm,
        ),
      ],
    );
  }
}
