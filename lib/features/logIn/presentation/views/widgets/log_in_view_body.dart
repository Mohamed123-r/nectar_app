import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/database/cache/cache_helper.dart';
import 'package:nectar/core/function/awesome_dialog.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_image_logo.dart';
import 'package:nectar/features/logIn/presentation/manager/cubits/log_in_state.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/section_text_field_from_log_in.dart';
import '../../manager/cubits/log_in_cubit.dart';
import 'forget_section.dart';
import 'sign_in_section.dart';

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
          CacheHelper().put(key: 'logInSuccess', value: true);
          Navigator.pushReplacement(
            context,
            AppRouter.router(
              const RouteSettings(
                name: AppRouter.kCongratulationView,
              ),
            ),
          );
        } else if (state is LogInError) {
          awesomeDialog(context, state ,
          isLogin: true);
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
                  const ForgetSection(),
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
                  const SignInSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


}

