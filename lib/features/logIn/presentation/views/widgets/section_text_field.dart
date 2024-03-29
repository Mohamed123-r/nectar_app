import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';

class SectionTextField extends StatelessWidget {
  const SectionTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Loging",
          style: Styles.textStyle26,
        ),
        const SizedBox(height: 15),
        const CustomTextFromTextField(
          hintText: 'Enter your emails and password',
        ),
        const SizedBox(height: 40),
        const CustomTextFromTextField(
          hintText: 'Email',
        ),
        CustomTextField(
          onSaved: (value) {},
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 30),
        const CustomTextFromTextField(
          hintText: 'Password',
        ),
        const PasswordTextField(),
      ],
    );
  }
}
