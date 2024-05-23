import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';

class OrderAcceptedView extends StatelessWidget {
  const OrderAcceptedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(text: 'Track Order', onPressed: () {}),
            SizedBox(
              height: 20.sp,
            ),
            CustomButton(
              backgroundColor: Colors.transparent,
              text: 'Back to Home',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  AppRouter.router(
                    const RouteSettings(name: AppRouter.kHomeView),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.congratulation,
              width: 220,
            ),
            SizedBox(
              height: 60.sp,
            ),
            const Text(
              "Your Order has been",
              style: Styles.textStyle28,
            ),
            const Text(
              "  accepted",
              style: Styles.textStyle28,
            ),
            SizedBox(
              height: 30.sp,
            ),
            const CustomTextFromTextField(
              hintText: "Your items has been placcd and is on ",
            ),
            const CustomTextFromTextField(
              hintText: "it’s way to being processed",
            ),
          ],
        ),
      ),
    );
  }
}
