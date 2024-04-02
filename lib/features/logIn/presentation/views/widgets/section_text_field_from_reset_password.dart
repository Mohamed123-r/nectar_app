import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';

import 'custom_item_from_opt.dart';

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
        SizedBox(height: 20.sp),
        Container(
          height: 67.sp,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
            borderRadius: BorderRadius.circular(15.sp),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomItemFromOPT(),
            ],
          ),
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


