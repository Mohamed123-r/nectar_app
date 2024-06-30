import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffixIcon,
    this.onChanged,
    this.onSaved,
    required this.keyboardType,
    this.obscureText = false, this.controller,
  });

  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController? controller;

  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor: kGreyColor,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
      keyboardType: keyboardType,
      controller:controller ,
    );
  }
}
