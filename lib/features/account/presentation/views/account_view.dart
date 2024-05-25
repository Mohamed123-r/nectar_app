import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'widgets/account_view_body.dart';

class AccountView extends StatelessWidget {
  const AccountView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: const Border(
          bottom: BorderSide(
            color: kGreyColor,
            width: 0.5,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Account",
          style: Styles.textStyle20,
        ),
      ),
    body: const AccountViewBody(),
    );
  }
}
