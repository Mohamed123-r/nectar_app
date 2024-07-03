import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_image_logo.dart';
import 'package:nectar/features/logIn/presentation/manager/cubits/log_in_state.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/section_text_field_from_log_in.dart';

import '../../manager/cubits/log_in_cubit.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogInSuccess) {
          Navigator.pushReplacement(
            context,
            AppRouter.router(
              const RouteSettings(
                name: AppRouter.kOrderAcceptedView,
              ),
            ),
          );
        } else if (state is LogInError) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.warning,
            headerAnimationLoop: false,
            animType: AnimType.scale,
            title: 'Oops!',
            desc: state.message,
            descTextStyle: Styles.textStyle14.copyWith(color: Colors.black),
            btnOk: Column(
              children: [
                CustomButton(
                  text: 'Please try again',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 10.sp),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        AppRouter.router(
                          const RouteSettings(
                            name: AppRouter.kSignUpView,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Go to Sign Up',
                      style: Styles.textStyle18.copyWith(color: kPrimaryColor),
                    )),
              ],
            ),
          ).show();
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
                  SectionTextFieldFromLogIn(
                    logInEmail: context.read<LogInCubit>().logInEmail,
                    logInPassword: context.read<LogInCubit>().logInPassword,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            AppRouter.router(
                              const RouteSettings(
                                name: AppRouter.kForgetPasswordView,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          "Forgot Password?",
                          style: Styles.textStyle14.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.sp),
                  state is LogInLoading
                      ? const CircularProgressIndicator(
                          color: kPrimaryColor,
                        )
                      : CustomButton(
                          text: "Log In",
                          onPressed: () {
                            context.read<LogInCubit>().logIN();
                          },
                        ),
                  SizedBox(height: 25.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Styles.textStyle14.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            AppRouter.router(
                              const RouteSettings(
                                name: AppRouter.kSignUpView,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: Styles.textStyle14.copyWith(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
