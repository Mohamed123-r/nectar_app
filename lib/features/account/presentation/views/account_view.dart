import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'widgets/account_view_body.dart';

class AccountView extends StatelessWidget {
  const AccountView ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: AccountViewBody(),
    );
  }
}
