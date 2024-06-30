import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key,  this.controller});
  final TextEditingController? controller ;
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool showPassword = true;


  @override
  Widget build(BuildContext context) {
    return CustomTextField(
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
