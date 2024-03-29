import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';


class CustomTextFromTextField extends StatelessWidget {
  const CustomTextFromTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Text(
      hintText,
      style: Styles.textStyle16.copyWith(
        color: kGreyColor,
      ),
    );
  }
}
