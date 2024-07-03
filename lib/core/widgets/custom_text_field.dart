import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffixIcon,
    this.onChanged,
    this.onSaved,
    required this.keyboardType,
    this.obscureText = false,
    this.controller, this.validator,
  });

  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController? controller;
 final String? Function(String?)? validator;

  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator ,
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
      controller: controller,
    );
  }
}

