import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';

class CongratulationView extends StatefulWidget {
  const CongratulationView({super.key});

  @override
  State<CongratulationView> createState() => _CongratulationViewState();
}

class _CongratulationViewState extends State<CongratulationView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        AppRouter.router(
          const RouteSettings(name: AppRouter.kHomeView),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70.sp,
        child: const Center(
          child: CircularProgressIndicator(
            color: kPrimaryColor,
          ),
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
              "Congratulation",
              style: Styles.textStyle28,
            ),
            SizedBox(
              height: 30.sp,
            ),
            const CustomTextFromTextField(
              hintText: "Your change password is success",
            ),
            const CustomTextFromTextField(
              hintText: "Welcome to our app",
            ),
          ],
        ),
      ),
    );
  }
}
