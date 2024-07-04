import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';
import '../utils/app_router.dart';
import '../utils/styles.dart';
import '../widgets/custom_button.dart';

Future<dynamic> awesomeDialog(BuildContext context, dynamic state,
    {bool isLogin = false}) {
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.warning,
    headerAnimationLoop: false,
    animType: AnimType.scale,
    title: 'Oops!',
    desc:
        state.message == 'Faild' ? "Username is already taken " : state.message,
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
        isLogin == true
            ? TextButton(
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
                ))
            : Container(),
      ],
    ),
  ).show();
}
