import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_router.dart';

import '../../../../../core/utils/styles.dart';

class ForgetSection extends StatelessWidget {
  const ForgetSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}


