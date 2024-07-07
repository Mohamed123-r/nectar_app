import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/function/awesome_dialog.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/features/logIn/presentation/manager/cubits/change_password_cubit.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/section_text_field_from_reset_password.dart';

class BottomSheetBodyFromResetPassword extends StatelessWidget {
  const BottomSheetBodyFromResetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
      listener: (context, state) {
        if (state is ChangePasswordSuccess) {

          buildShow(context);
        } else if (state is ChangePasswordError) {
          awesomeDialog(
            context,
            state,
          );
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
                      'Enter new password for your account to reset password',
                ),
                SizedBox(height: 30.sp),
                SectionTextFieldFromResetPassword(
                  email:
                      context.read<ChangePasswordCubit>().changePasswordEmail,
                  password: context
                      .read<ChangePasswordCubit>()
                      .changePasswordPassword,
                  passwordConfirm:
                      context.read<ChangePasswordCubit>().changePasswordConfirm,
                ),
                SizedBox(height: 40.sp),
                state is ChangePasswordLoading
                    ? const SizedBox(
                        height: 67,
                        child: Align(
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(
                            color: kPrimaryColor,
                          ),
                        ),
                      )
                    : CustomButton(
                        text: 'Reset Password',
                        onPressed: () {
                          context.read<ChangePasswordCubit>().changePassword();
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

  Future<dynamic> buildShow(BuildContext context) {
    return AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.scale,
          title: 'Success',
          desc:'Successfully reset password',
          descTextStyle: Styles.textStyle14.copyWith(color: Colors.black),
          btnOk: Column(
            children: [
              CustomButton(
                text: 'Ok',
                onPressed: () {

                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    AppRouter.router(
                      const RouteSettings(
                        name: AppRouter.kLogInView,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 10.sp),
            ],
          ),
        ).show();
  }
}
