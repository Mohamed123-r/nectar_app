import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/function/awesome_dialog.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_image_logo.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/features/signUp/presentation/manager/cubits/sign_up_cubit.dart';
import 'package:nectar/features/signUp/presentation/manager/cubits/sign_up_state.dart';
import 'log_in_section.dart';
import 'section_text_field_from_sign_up.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          Navigator.pushReplacement(
            context,
            AppRouter.router(
              const RouteSettings(
                name: AppRouter.kLogInView,
              ),
            ),
          );
        } else if (state is SignUpError) {
          awesomeDialog(context, state);
        }
      },
      builder: (context, state) {
        return Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.background),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                children: [
                  SizedBox(height: 70.sp),
                  const CustomImageLogo(),
                  const SizedBox(height: 100),
                  SectionTextFieldFromSignUp(
                    username: context.read<SignUpCubit>().signUpUserName,
                    phoneNumber:
                        context.read<SignUpCubit>().signUpPhoneNumber,
                    email: context.read<SignUpCubit>().signUpEmail,
                    password: context.read<SignUpCubit>().signUpPassword,
                    confirmPassword:
                        context.read<SignUpCubit>().signUpConfirmPassword,
                  ),
                  SizedBox(height: 20.sp),
                  const CustomTextFromTextField(
                    hintText: "By continuing you agree to our"
                        " Terms of Service and Privacy Policy.",
                  ),
                  SizedBox(height: 30.sp),
                  state is SignUpLoading
                      ? const CircularProgressIndicator(
                          color: kPrimaryColor,
                        )
                      : CustomButton(
                          text: "Sign Up",
                          onPressed: () {
                            context.read<SignUpCubit>().signUp();
                          },
                        ),
                  SizedBox(height: 25.sp),
                  const LogInSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
