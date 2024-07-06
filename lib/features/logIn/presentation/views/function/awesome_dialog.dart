import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';

Future<dynamic> awesomeDialogFromSendCode(BuildContext context, dynamic state,
    {bool isLogin = false}) {
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    animType: AnimType.bottomSlide,
    title: 'Oops, Error',
    desc: 'Please enter a valid email',
    descTextStyle: Styles.textStyle14.copyWith(color: Colors.black),
    btnOk: CustomButton(
      text: 'Please try again',
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  ).show();
}
