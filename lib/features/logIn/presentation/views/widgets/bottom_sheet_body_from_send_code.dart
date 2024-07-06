import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/features/logIn/presentation/manager/cubits/confirm_num_cubit.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/section_text_field_from_send_code.dart';
import '../function/awesome_dialog.dart';
import 'bottom_sheet_body_from_reset_password.dart';

class BottomSheetBodyFromSendCode extends StatelessWidget {
  const BottomSheetBodyFromSendCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConfirmNumCubit, ConfirmNumState>(
      listener: (context, state) {
        if (state is ConfirmNumSuccess) {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.sp),
                topRight: Radius.circular(30.sp),
              ),
            ),
            context: context,
            builder: (context) {
              return const BottomSheetBodyFromResetPassword();
            },
          );
        } else if (state is ConfirmNumError) {
          awesomeDialogFromSendCode(context, state,
              message: 'Please Enter a Valid Code');
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 35.0.sp,
              right: 16.0.sp,
              left: 16.sp,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Reset Password",
                  style: Styles.textStyle26,
                ),
                SizedBox(height: 15.sp),
                const CustomTextFromTextField(
                  hintText:
                      'Enter the code that was sent to your email address',
                ),
                SizedBox(height: 30.sp),
                SectionTextFieldFromSendCode(
                  confirmNum: context.read<ConfirmNumCubit>().num,
                ),
                SizedBox(height: 40.sp),
                CustomButton(
                  text: 'Send Code',
                  onPressed: () {
                    log(context.read<ConfirmNumCubit>().num.toString());
                    context.read<ConfirmNumCubit>().confirmNum();
                  },
                ),
                SizedBox(
                  height: 15.sp,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
