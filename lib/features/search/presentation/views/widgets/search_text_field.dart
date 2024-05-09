import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  bool hasFocus = false;
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      cursorColor: kPrimaryColor,
      keyboardType: TextInputType.text,
      style: Styles.textStyle16,
      onChanged: (value) {
        setState(() {
          hasFocus = value.isNotEmpty;
        });
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        suffixIcon: Builder(
          builder: (context) {
            if (hasFocus) {
              return IconButton(
                onPressed: () {
                  _textController.clear();
                  setState(() {
                    hasFocus = false;
                  });
                },
                icon: Icon(
                  Icons.cancel,
                  color: Colors.grey[400],
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.black),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        filled: true,
        fillColor: Colors.grey[300],
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
