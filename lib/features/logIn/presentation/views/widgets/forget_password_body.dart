import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/widgets/custom_image_logo.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';

import '../../../../../constants.dart';
import '../../../../../core/function/validator.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../manager/cubits/send_num_cubit.dart';
import '../../manager/cubits/send_num_state.dart';
import '../function/awesome_dialog.dart';
import '../widgets/bottom_sheet_body_from_send_code.dart';


class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendNumCubit, SendNumState>(
      listener: (context, state) {
        if (state is SendNumSuccess) {
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
                return const BottomSheetBodyFromSendCode();
              });
        } else if (state is SendNumError) {
          awesomeDialogFromSendCode(context, state);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
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
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 70.sp),
                        const CustomImageLogo(),
                        const SizedBox(height: 100),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Forgot Password",
                              style: Styles.textStyle26,
                            ),
                            SizedBox(height: 15.sp),
                            const CustomTextFromTextField(
                                hintText: "Enter your email for verification"
                                    " process we will send 6 digits code"
                                    " to your email"),
                            SizedBox(height: 40.sp),
                            const CustomTextFromTextField(
                              hintText: 'Email',
                            ),
                            CustomTextField(
                              onSaved: (value) {},
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                return validatorOfEmail(value);
                              },
                              controller:
                                  context.read<SendNumCubit>().sendNumEmail,
                            ),
                          ],
                        ),
                        SizedBox(height: 60.sp),
                        state is SendNumLoading
                            ? const CircularProgressIndicator(
                                color: kPrimaryColor,
                              )
                            : CustomButton(
                                text: "Continue",
                                onPressed: () {
                                  context
                                          .read<SendNumCubit>()
                                          .sendNumEmail
                                          .text
                                          .contains(RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                                      ? context.read<SendNumCubit>().sendNum()
                                      : awesomeDialogFromSendCode(context, state);
                                },
                              ),
                      ],
                    ),
                    Positioned(
                      top: 20,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            AppRouter.router(
                              const RouteSettings(name: AppRouter.kLogInView),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 25.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

