
import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/styles.dart';

class SignInSection extends StatelessWidget {
  const SignInSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
