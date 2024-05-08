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
        leading:
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon:  const Icon(
              Icons.tune,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
