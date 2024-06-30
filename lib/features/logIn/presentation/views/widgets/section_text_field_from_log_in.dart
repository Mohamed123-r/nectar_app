import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';

class SectionTextFieldFromLogIn extends StatelessWidget {
  const SectionTextFieldFromLogIn({
    super.key, required this.logInEmail, required this.logInPassword,
  });

  final TextEditingController logInEmail ;
  final TextEditingController logInPassword ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Loging",
          style: Styles.textStyle26,
        ),
        SizedBox(height: 15.sp),
        const CustomTextFromTextField(
          hintText: 'Enter your emails and password',
        ),
        SizedBox(height: 40.sp),
        const CustomTextFromTextField(
          hintText: 'Email',
        ),
        CustomTextField(
          onSaved: (value) {},
          keyboardType: TextInputType.emailAddress,
          controller: logInEmail,

        ),
        SizedBox(height: 30.sp),
        const CustomTextFromTextField(
          hintText: 'Password',
        ),
         PasswordTextField(controller: logInPassword,),
      ],
    );
  }
}
