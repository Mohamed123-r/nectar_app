import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BeveragesViewBod extends StatelessWidget {
  const BeveragesViewBod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Beverages',
          style: Styles.textStyle20,
        ),
      ),
      body: Container(),
    );
  }
}
