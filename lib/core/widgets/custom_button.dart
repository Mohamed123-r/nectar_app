import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 67,
      minWidth: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(19),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
