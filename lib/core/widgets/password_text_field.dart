import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.controller, this.validator});

  final TextEditingController? controller;

  final String? Function(String?)? validator;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validator: widget.validator,
      controller: widget.controller,
      onSaved: (value) {},
      suffixIcon: IconButton(
        onPressed: () {
          setState(
            () {
              showPassword == true ? showPassword = false : showPassword = true;
            },
          );
        },
        icon: const Icon(
          Icons.visibility_outlined,
        ),
      ),
      obscureText: showPassword,
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
