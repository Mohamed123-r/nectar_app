import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_image_logo.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'package:nectar/features/logIn/presentation/views/widgets/bottom_sheet_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
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
                                " process we will send 5 digits code"
                                " to your email"),
                        SizedBox(height: 40.sp),
                        const CustomTextFromTextField(
                          hintText: 'Email',
                        ),
                        CustomTextField(
                          onSaved: (value) {},
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ],
                    ),
                    SizedBox(height: 60.sp),
                    CustomButton(
                      text: "Continue",
                      onPressed: () {
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
                            return const BottomSheetBody();
                          },
                        );
                      },
                    ),
                  ],
                ),
                Positioned(
                  top: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
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
  }
}


