import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';


class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 35.0.sp,
          right: 16.0.sp,
          left: 16.sp,
          bottom:
          MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Forget Password",
              style: Styles.textStyle26,
            ),
            SizedBox(height: 15.sp),
            const CustomTextFromTextField(
              hintText:
              'Enter your email for verification process we will send 5 digits code to your email',
            ),
            SizedBox(height: 30.sp),
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
            SizedBox(height: 40.sp),
            CustomButton(
              text: 'Reset Password',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 15.sp,
            ),
          ],
        ),
      ),
    );
  }
}